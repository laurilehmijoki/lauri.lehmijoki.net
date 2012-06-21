---
layout: default
title: Quickly creating Bash scripts
published: true
---
# {{ page.title }}

#### Conveniently create a Bash script for each repetitive shell task

My former colleague, mr. A, had a tremendously useful Bash script that he used
for creating other Bash scripts. Typing `cmd e myscript` opened him a VIM editor
on the file *~/bin/myscript*. He would then write the script and exit VIM. As a
result, he had an executable shell script that he could invoke from anywhere
within that computer.

This quick and painless way of creating Bash scripts can be used for shortening
your daily Unix and Linux shell routines. I use it for creating SSH shortcuts,
for example. Typing `immotile` is much quicker than `ssh
immotile.morninglightmountain.net`. Over the time, this kind of handy helpers
save a lot of time. They also make you grin a bit to yourself – you get the
"that was easy" feeling!

Below is my adaption of mr. A's idea. I have extended it a bit to support my
[GitHub dotfiles](https://github.com/laurilehmijoki/dotfiles) configuration;
`cmd e myscript` creates a script into the *~/bin* directory, whereas `cmd le
myscript` creates one into *~/bin/local*. The difference here is that *~/bin* is
in GitHub but *~/bin/local* is not.

## Usage

1. `mkdir -p ~/bin/local`

2. Copy the script below into file *~/bin/cmd*

3. Make the script executable with `chmod +x ~/bin/cmd`

4. Add *~/bin* and *~/bin/local* into your path with `echo "export
PATH=\$PATH:~/bin:~/bin/local" >> .bash_profile`

5. Reload Bash with `source ~/.bash_profile`

{% highlight bash %}
#!/bin/bash -e

usage() {
  echo "Usage: `basename $0` <command> script"
  echo "  commands"
  echo "    e  – edit a Bash script in $bin"
  echo "    le – edit a Bash script in $bin_local"
  exit 2
}

action=$1
filename=$2
bin=~/bin
bin_local=$bin/local
editor=vim

createScriptIfItDoesntExist() {
  if [ ! -f $1 ]; then
    touch $1
    chmod +x $1
    echo "#!/bin/bash -e" >> $1
    echo "" >> $1
  fi
}

edit() {
  createScriptIfItDoesntExist $1
  $editor $1
}

case "$action" in
  le)
    script_root=$bin_local
    ;;
  e)
    script_root=$bin
    ;;
  *)
    echo Unknown action $action
    usage
    ;;
esac

script=$script_root/$filename
edit $script
{% endhighlight %}

## Afterword

Thanks to the possibility of storing Bash snippets into *~/bin/local* (which is
in *.gitignore*), I can keep my home directory's Git status clean, even though I
have files local to the particular computer.

{% highlight bash %}
20:47 (air @ master) ~ $ git status
# On branch master
# Your branch is ahead of 'remotes/origin/master' by 2 commits.
#
nothing to commit (working directory clean)
20:47 (air @ master) ~ $
{% endhighlight %}

However, if I want to create Bash scripts that are available to all my
computers, I use `cmd e themagicscript`, which saves it into *~/bin*. After
that, all I need to do is to commit the new script into my local Git, push the
changes into GitHub and then pull them to my other computers. All this makes it
much more sensible to invest time into your personal Bash scripts.
