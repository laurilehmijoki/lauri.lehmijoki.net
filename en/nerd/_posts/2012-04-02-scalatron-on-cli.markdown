---
layout: default
title: Scalatron on the command-line interface
---
# {{ page.title }}

#### How to develop Scalatron bots on the CLI

## Background

Scalatron is a super fun way to learn Scala the programming language. In Scalatron, you program bots that go around on a two-dimensional plane, reacting on the events that happen on the game. The game rules are simple, but there is no upper limit on how intelligent bots you can program. What an intriguing challenge!

If you want to learn functional programming and Scala, I highly recommend that you check out the Scalatron [web page](http://scalatron.wordpress.com) and start writing your own bots. The Scalatron team has also written decent tutorials for getting started.

**This article is meant as a supplement to the official Scalatron documentation, which already contains information on how to set up a development environment on IntelliJ IDEA.** I believe that working on the \*nix command-line interface is important, if you want to get an in-depth understanding of the programming system you are learning. **Here are some of the benefits of working on the CLI instead of an IDE:**

* You get to understand the compiler, because you have to compile the software yourself
* You will understand the meaning of every file in your project, since you've created them yourself
* You will learn the APIs by heart, since you have to look at the documentation instead of relying on the IDE's auto-complete feature
* You'll be only a couple of keypresses away from the powerful Unix tools that dwell behind the CLI
* Working on the CLI allows you to be on full control of everything that happens during development – modern IDEs easily abstract away too many things, causing you to be on their mercy

## Preparing Scala environment

Here I assume that you don't have Scala installed on your system. We are going to download the latest Scala version from the language's home page, and then install it onto your Mac or Linux (other Unix systems will also do here). 

Its possible to install Scala via a package manager such as Apt-get on Ubuntu, but the Scala version in your package manager's repository might be outdated. Because of that and the idea that **working on the CLI helps you understand the programming system you want to learn, I suggest that you install Scala with the steps below**.

### Installing Scala

First, download Scala (you can check for the latest release on the [Scala download page](http://www.scala-lang.org/downloads); here we are using the version 2.9.1):

`curl http://www.scala-lang.org/downloads/distrib/files/scala-2.9.1-1.zip > /tmp/scala.zip`

Create the directory where to put Scala and then unpack the zip:

`mkdir ~/Install`

`unzip /tmp/scala.zip -d ~/Install`

### Configuring environment

Create the SCALA\_HOME environmental variable by appending a string into your shell configuration:

`echo "export SCALA_HOME=~/Install/scala-2.9.1-1" >> ~/.bash_profile`

We also need to add Scala into your command path, so that you can invoke Scala without having to rememer the full path to the installation:

`echo "export PATH=\$PATH:\$SCALA_HOME/bin" >> ~/.bash_profile`

Let's reload *.bash_profile* to activate the SCALA\_HOME environmental variable and the path setting:

`source ~/.bash_profile`

As the final step we make all the Scala binaries executable:

`chmod u+x $SCALA_HOME/bin/*`

Your \*nix now has Scala. You can give Scala a test run by opening the interpreter with the `scala` command.

## Installing Scalatron server

Scalatron server is the software that contains the game engine and the graphical interface to the game. You need it for running your Scalatron bots. The Scalatron web site has [documentation](http://scalatron.wordpress.com/download) on how to set up a shared server.

You can also install the Scalatron server with the following steps:

1. Download the latest release from the [Scalatron download page](http://scalatron.wordpress.com/download)
2. Unpack the downloaded file
3. Go to the directory where you unpacked the file and invoke `cd bin && java -jar Scalatron.jar` to start the server

## Developing Scalatron bots on CLI

The official Scalatron documentation tells you how to compile and develop bots with IntelliJ IDEA. Here we go through an alternative (and I believe faster) way of developing bots.

### Creating new Scalatron project
Create a new project directory for your bot:

`mkdir MorningLightMountain && cd MorningLightMountain` (MorningLightMountain is a nefarious alien in Peter Hamilton's Commonwealth Saga, a science fiction book series.)

Let's create the needed sub-directories:

`mkdir bin src`

Edit the file *src/Bot.scala* and add the code for the most simplest bot:

<pre><code>// Contents of src/Bot.scala
class ControlFunctionFactory {
  def create = new Bot().respond _
}
class Bot {
  def respond(input: String) = "Status(text=MorningLightMountain will conquer the whole universe!)"
}</code></pre>

Next we'll compile the Scalatron bot, and then we'll deploy it on the server. Will humans prevail, or will MorningLightMountain take over and enslave us?

### Compiling Scala and Scalatron

Add an empty *MANIFEST.MF* file into your project's root: 

`touch MANIFEST.MF` 

Jar needs it as a header file.

With the following script you can compile your Scalatron bot:

<script src="https://gist.github.com/2276912.js"> </script>

Save the script with name *build* into your project's root and make it executable with `chmod u+x build`.

Now you can compile the Scalatron bot with `./build`.

### Deploying the bot on server

This step is easy. All we need to do is to make the *Scalatron.jar* available for the server. Symbolic links will help us. Let's assume that you've installed the Scalatron server in *~/Scala/Scalatron/server* and the MorningLightMountain project is in *~/Scala/Scalatron/MorningLightMountain*. Run the following commands to create the symbolic link.

`mkdir ~/Scala/Scalatron/server/bots/MorningLightMountain`

`ln -s ~/Scala/Scalatron/MorningLightMountain/bin/ScalatronBot.jar ~/Scala/Scalatron/server/bots/MorningLightMountain/ScalatronBot.jar`

Start the Scalatron server, and MorningLightMountain is there!

## Afterword

We've established a way of developing Scala and Scalatron bots on the command line. Have fun with Scala and may the smartest bot win!

### VIM and Scala

VIM is fits well into Scala development. However, it doesn't have built-in support for Scala indentation and syntax highlighting. Lorenzo Danielsson has written a [blog post](http://lorenzod8n.wordpress.com/2008/01/11/getting-scala-syntax-hightlighting-to-work-in-vim) on how to get them working.
