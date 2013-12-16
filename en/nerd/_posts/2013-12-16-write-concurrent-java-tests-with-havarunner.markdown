---
layout: article-en
title: Write concurrent Java tests with HavaRunner
---

#### An introduction into HavaRunner, a test framework that emphasises concurrency and simplicity in configuration

HavaRunner is a tool for writing fast and yet graspable tests. I have used
HavaRunner in two Java projects. So far I have been quite satisfied with it:
HavaRunner has brought significant performance boosts by running tests faster.
It has also simplified the test infrastructure in these two projects. If you try
out HavaRunner, I would like to hear your experience of using it.

I wrote HavaRunner, because I felt it was difficult to write scalable Java tests
that were easy to understand.

Below, I will explain my view on the shortcomings of JUnit and TestNG. Then I
will expand on the central concepts of HavaRunner. I will not include any code
examples in this article – you can find them on [HavaRunner's GitHub
page](https://github.com/havarunner/havarunner).

## Making way for concurrent Java tests

Many Java test frameworks treat parallelism as a special case. They might
provide a way of running tests in parallel, but this often requires extra
configuration. This is the case with JUnit and TestNG.

HavaRunner takes a different approach. It runs tests in parallel *by default*.

Moreover, HavaRunner attempts to clarify the structure of test code: it
encourages you to write your setup logic in the constructor of the Java class.
This in turn makes it possible to use `final` instance fields, and that means
immutable data – a key to highly comprehensible and yet concurrency-ready code.

Many of us programmers have already started to write production code that scales
to large number of CPUs. Let's take the same step in the world of testing and
begin writing inherently concurrent Java tests.

## Simplifying test infrastructure

Sometimes you can achieve remarkable performance boosts with the concurrency
support that the Maven plugins Surefire and Failsafe provide. However, running
tests in parallel with Surefire and Failsafe introduces two problems:

* Surefire and Failsafe promote configuration in *pom.xml*
* Surefire and Failsafe conceal the thread-safety issues and make them pop up at
  the Continuous Integration server, where they are difficult to debug

HavaRunner addresses these two problems like so:

Firstly, HavaRunner does not ask you to configure parallelism in *pom.xml*. This
approach reduces the need to understand Maven configurations. Often the less
there are settings in *pom.xml*, the easier the project is to comprehend.

Secondly, HavaRunner brings parallelism right on to IDE. That's where Java
developers work when they write tests. This makes it easier for programmers to
write robust tests, since they can see immediately how the tests behave when
they run them concurrently.

## Writing tests with HavaRunner

HavaRunner is a JUnit runner. This means that your tests will mostly look like
ordinary JUnit tests. You can even use many of the framework's annotations.
However, its beneficial to consider HavaRunner as an independent test framework,
since it introduces new concepts and rejects some assumptions that JUnit makes.

For code examples and full documentation, please see the [HavaRunner GitHub
page](https://github.com/havarunner/havarunner).

### Central concepts in HavaRunner

Below I will shortly explain the ideas behind the central concepts of HavaRunner.

#### Parallelism

HavaRunner runs everything in parallel. You can, however, opt out and run some
of your tests sequentially.

HavaRunner is built on Scala futures. Its run model is completely asynchronous.
I really did like to work with the Scala future API, and it helped me to write
concise code.

#### Suites

JUnit supports suites, but they fall short on what suites could potentially do.

HavaRunner attemps to improve on JUnit suites in two ways:

* It lets you declare the suite membership in the actual test class
* It supports stateful suites

Let's imagine a web application software. We can write a suite that starts up an
embedded web application and then passes the URL of the application to all the
tests in the suite. After all the tests have run, the we can instruct the suite
to shut down the application.

I have found HavaRunner suites to be really handy for managing cross-test state.
I have seen similar things done with the Cargo plugin or the JUnit `@AfterClass`
and `@BeforeClass` annotations. However, the HavaRunner suite concept seems to
outweight these techniques, because it promotes in-Java configuration and
immutable data. On the contrary, the Cargo plugin requires *pom.xml*
configuration, and the @AfterClass and @BeforeClass annotations encourage global
mutable state.

#### Scenarios

HavaRunner scenarios let you run the same test against multiple pieces of data.

Again, let's imagine a web application software. We can write a test to assert
that the application behaves the same way for logged-in users and anonymous
users. HavaRunner scenarios provide a way of writing the test once and then
running it twice, once for a logged-in user and once for an anonymous user.

We have been able to parallelise our WebDriver tests so that their run time
dropped significantly in one of the HavaRunner projects. The HavaRunner scenario
feature also allowed us to remove a Maven profile. We used the profile for
setting up a Java system property and then running the same set of WebDriver
tests twice, only with the system property changed. In short, HavaRunner
scenarios did let us gain performance improvements and reduce the complexity of
our build configuration.

## That's all. Try it out!

I have had good time writing tests with HavaRunner. I hope it helps you to write
faster and easier-to-understand tests.

* * *

## Appendix: Questions & Answers

**Q: Where does the name HavaRunner come from?**

**A:** We got numb from repeating the word Java. Hava is a new beginning!

**Q: Why did you extend JUnit?**

**A:** IDEs and build tools support JUnit. In addition, JUnit has less features
than TestNG. I presume it takes less time to write a JUnit runner than a TestNG
runner.

**Q: Why do you recommend HavaRunner for mid-sized to large projects?**

**A:** The benefits of concurrency, stateful suites and scenarios really start
to kick in once the size of the codebase reaches a certain threshold.

**Q: You refer to HavaRunner as a framework. Why is that?**

**A:** It is best to think of HavaRunner in its own term. JUnit is rather
tightly bound to the procedural way of thinking about software. Thus it would
not be correct to say that HavaRunner is a JUnit plugin.
