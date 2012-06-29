---
layout: article-en
title: On importance of having dotfiles in GitHub
---
# {{ page.title }}

#### Making it more sensible to invest into Unix shell configuration files

In Unix-like systems, configuration files are often called dotfiles. The name
derives from the convention of prefixing the names of such files with a dot.
Semantically, dotfiles imply auxiliary files. This is why `ls` prints them to
you only when you add the `-a` parameter.

However, recently, the term dotfiles has expanded to comprise other files as
well: in GitHub several developers have repositories named "dotfiles" that
actually contain their version-controlled files under the Unix home directory.
In this context, the term dotfiles denotes personal Unix shell settings.

In this article I am going discuss why it is beneficial to keep dotfiles in Git
and have them stored in GitHub.

## Why bother?

In your home directory you will find several dotfiles. *.bash_profile* and
*.gitconfig* are examples that you are probably familiar with. Why bother
investing time into these files? If you are a serious geek, you spend quite a
lot of time on the command line. Merging, SSH'ing and editing files with VIM,
Emacs or friends might take a significant amount of your typical day. Since
these operations are affected by dotfiles and time is precious, it makes sense
to put some attention into how you store and develop dotfiles.

Having dotfiles version-controlled and public has benefits. First, it becomes
sensible to invest time into them since – thanks to version control and GitHub –
they will be around for years to come. Second, since they are in GitHub, you can
have multiple computers that share the same dotfiles. Suddenly you start feeling
at home on the command line, since you can pull your settings from GitHub on any
Mac or Linux. Furthermore, it is useful to have the dotfiles on a public GitHub
repository, since this allows you to pull them on a short-lived virtual machine
or a computer that you do not entirely trust. Third, well-tuned dotfiles
increase gumption and thus make it more likely that you want to stick to your
profession in the future as well.

In addition to the rational reasons, investing into dotfiles pays back in
moments of delight and zen: version-controlled Unix home directory brings sense
of peacefulness; [handy Bash scripts speed up your daily shell operations and
make you grin]({% post_url 2012-06-20-quickly-creating-bash-scripts %}); tuning
your favorite text editor's configuration file will result in a transcendental
union with you and the computer.

## Usage

* Create a Git repository for your home directory with `cd ~ && git init`
* Add into Git the the files you consider as your personal configuration files
  (e.g., *.bash_profile*, *.gitconfig*, *.vimrc*, *.emacs*, *.initrc* or
  *.ackrc*)
* Put everything else into *.gitignore*, so that after each commit your working
  directory is clean (this is quite important)
* Create a repository called "dotfiles" into GitHub
* `git remote add origin git@github.com:yourusername/dotfiles.git`
* Make sure your your version-controlled dotfiles do not contain any sensitive
  material such as passwords
* Push your local repository into GitHub

## Dotfiles testimonies from nerds

> If Unix shell were Metaverse, the virtual reality in Neal Stephenson's *Snow
> Crash*, dotfiles would be your belongings to take with every time you enter
> the alternative world.

> MacGuyver is no MacGuyver without his Swiss army knife – nor is a nerd a
> nerd without polished dotfiles.

> Dotfiles? Who needs them anyway. I'll stick to Ed.
