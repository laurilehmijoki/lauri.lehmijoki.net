---
layout: article-en
title: Git-find-added
published: true
---
# {{ page.title }}

#### Finding out when a string was added to a Git repository

Sometimes you need to know then a certain string was added to Git. The script
below can help you. Save the script into a file named _git-find-added_ and place
the file into a directory that is in your path.

{% highlight bash %}
#!/bin/bash
# Usage: `git-find-added QUERY [PATH]`
#
# Examples: `git-find-added myfunc` will print the context and the commits where
# myfunc was either added or updated.
#
# Credit: Ari S & LL

QUERY=$1; shift

git log -p -- $@ | grep -E "^(commit|\+.*$QUERY)" | grep -B1 "$QUERY"
{% endhighlight %}

Running the script will print you something like this:

<pre><code>$ git-find-added "em-websocket"
commit 91023e800726abad14ed682f638ded74d86fbb6b
+ gem "em-websocket"
+ em-websocket (0.3.6)
+ em-websocket
--
commit c911bb2f741eafa4d52289e11fb97ce120cda1a8
+require 'em-websocket'
</code></pre>

You can process the output further by grepping the Git SHA1 from the output:

`$ git-find-added "em-websocket" | grep -E "^commit" | cut -d " " -f 2`

Don't forget to take advantage of Git aliases. They are a great way to add
functionality into Git and make them feel like they are part of Git core. To add
a new alias, modify the  _~/.gitconfig_ and add into the \[alias\] section a new
entry:

<pre><code>[alias]
  fa = "!git-find-added"</code></pre>

Now you can use _git-find-added_ by simply typing:

`$ git fa "em-websocket"`

Unfortunately Git aliases do not support Unix pipes. If you would like to make
the SHA1 grepping shorter, you could modify the original script by adding
arguments to it.
