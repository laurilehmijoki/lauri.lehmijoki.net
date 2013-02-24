---
layout: article-en
title: Parallel and isolated web application tests in Scala
---
#### A model for performant and thorough tests

In this article we will write a web application, which can be flexibly
configured and efficiently tested.

We are going to use the following tools:

* **Scalatra**
* **Scala specs2**
* **Embedded Jetty**
* **Google Guice**

## The application

Let's start by looking at how our application behaves.

The application will respond to HTTP requests with a greeting.

    $ curl localhost:8080
    Hello llehmijo

It can be configured with a system property `hello.target`. For example, if the
application is started with `hello.target=Andromeda`, the response will be like
this:

    $ curl localhost:8080
    Hello Andromeda

We pass the configuration to the application at startup. Below is the **Guice**
configuration, which defines the HTTP interface of our application. It reads the
configuration value from the system property and passes it to a new servlet
instance, which it then binds to serve all the HTTP requests.

{% highlight scala %}
import com.google.inject.Guice
import com.google.inject.servlet.{GuiceServletContextListener, ServletModule}
import GuiceConfig._

class GuiceConfig extends GuiceServletContextListener {
  def getInjector = Guice.createInjector(servletModule)
}

object GuiceConfig {
  def servletModule = new ServletModule() {
    override def configureServlets() {
      val objectToGreet = System.getProperty("hello.target", System.getProperty("user.name"))
      serve("/*").`with`(new HelloServlet(objectToGreet))
    }
  }
}
{% endhighlight %}

And this is how our servlet looks like:

{% highlight scala %}
import org.scalatra._

class HelloServlet(galacticObject: String) extends ScalatraServlet {

  get("/") {
    "Hello " + galacticObject
  }
}
{% endhighlight %}

Looking good. Nothing special here. Next, let's see how we test our application.

## Testing the application

Writing integration tests on an application with complex configuration options
is not trivial. Bootstrapping the application with all the possible combinations
of configurations can result in difficult-to-understand tests that are a burden
to maintain. Fortunately **Scala specs2** allows us to write highly readable
tests.

In addition to readability, **specs2** will elegantly take advantage of our
multicore computers by running the tests in parallel. Parallel execution of
tests becomes important as the size of the software grows.

Here's a specification of our greeting application:

{% highlight scala %}
import com.sun.jersey.api.client.{ClientResponse, Client}
import org.specs2.mutable.{BeforeAfter, Specification}

class HelloServletSpec extends Specification {

  "GET / on HelloServlet with world configuration" should {
    "greet the world" in new WorldServer {
      val greeting = get("http://localhost:" + server.port)
      greeting must equalTo("Hello World")
    }
  }

  "GET / on HelloServlet with galaxy configuration" should {
    "greet the galaxy" in new GalaxyServer {
      val greeting = get("http://localhost:" + server.port)
      greeting must equalTo("Hello Andromeda")
    }
  }

  def get(url: String): String =
    Client.create().resource(url: String).get(classOf[ClientResponse]).getEntity(classOf[String])
}

trait GalaxyServer extends BeforeAfter {
  val server = new TestServer(spaceObject = "Andromeda")
  def before { server.run }
  def after { server.stop }
}

trait WorldServer extends BeforeAfter {
  val server = new TestServer(spaceObject = "World")
  def before { server.run }
  def after { server.stop }
}
{% endhighlight %}

Notice how we call the same url, `"http://localhost:" + server.port` in both the
tests and still expect to receive different responses. How does one define a
different application configuration for each test? We can do it with **Guice**
and an embedded servlet container, **Jetty**.

Below is the implementation of `TestServer`.

{% highlight scala %}
import com.google.inject.{Injector, Guice}
import com.google.inject.servlet.{GuiceFilter, GuiceServletContextListener}
import java.util
import javax.servlet.DispatcherType
import org.eclipse.jetty.server.Server
import org.eclipse.jetty.servlet.FilterHolder
import org.eclipse.jetty.webapp.WebAppContext
import util.concurrent.atomic.AtomicInteger
import TestServer._

class TestServer(val port: Int = nextPort.getAndIncrement, spaceObject: String) {
  val server = new Server(port)

  def run() {
    start()
  }

  def stop() {
    server.stop()
    server.join()
    println("Shutting down server at port " + port)
  }

  private def start() {
    val injector = createInjector()
    server.setHandler(buildContext(injector))
    server.start()
    println("Started server at port " + port)
  }

  private def createInjector() = TestServer.synchronized {
    System.setProperty("hello.target", spaceObject)
    Guice.createInjector(GuiceConfig.servletModule)
  }

  private def buildContext(injector: Injector) = {
    val webapp = new WebAppContext()
    webapp.setResourceBase(".")
    webapp.setContextPath("/")
    webapp.addFilter(
      new FilterHolder(injector.getInstance(classOf[GuiceFilter])),
      "/*", util.EnumSet.of(DispatcherType.REQUEST)
    )
    webapp.addEventListener(new GuiceServletContextListener() {
      def getInjector = injector
    })
    webapp
  }
}

object TestServer {
  val nextPort = new AtomicInteger(8080)
}
{% endhighlight %}

Let's go through this file step-by-step. The interesting parts are here:

* `System.setProperty("hello.target", spaceObject)` passes the instance-specific
  configuration to the application.

  The system property has to be set before invoking `Guice.createInjector`,
  which happens on the next line. Our `GuiceConfig` then reads the system
  property before it initialises the servlet. As a result, the `HelloServlet`
  will receive the `hello.target` value as a constructor parameter.

  This kind of flexible, programmatic configuration lets us write thorough tests
  without introducing noisy setup code.

* `TestServer.synchronized` has to be there. Otherwise our **Scala specs2**
  tests will be reading and writing the `hello.target` system property – a
  global, mutable state – in unpredictable ways.

* The `Guice.createInjector(GuiceConfig.servletModule)` creates us a new
  `Injector` instance, from which we will fetch the `GuiceFilter` instance. The
  filter we will use to intercept all the HTTP requests sent to the web
  application. Thanks to this filter, we are able to configure our application
  with **Guice**.

  The gotcha here is to use a new `GuiceFilter` instance on each web application
  instance. If we would use the same filter for all of our test-time web
  applications, we could not run the tests in parallel, since `GuiceFilter`
  instances hold state in a way that borks concurrent usage. In brief, do not
  use `web.xml` to configure your `GuiceFilter` instances if you want to run
  your web application tests in parallel.

* The last interesting point is `val port: Int = nextPort.getAndIncrement`. It
  simply generates a new TCP port number for each new web application instance,
  letting us avoid port conflicts at runtime.

## Conclusion

We have established a general model of writing isolated and parallel web
application tests in Scala. It is possible to benefit from this kind of a model
in large applications that have non-trivial configuration options and that
suffer from long test cycles.

* * *

Thanks to Tomi Takussaari for giving the idea of how to run multiple Guice
injector instances side-by-side.

The full code can be found at
<https://github.com/laurilehmijoki/isolated-and-parallel-scala-webapp-tests>.
