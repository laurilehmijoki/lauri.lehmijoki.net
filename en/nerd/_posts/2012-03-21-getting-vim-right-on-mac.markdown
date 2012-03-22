---
layout: default
title: Getting VIM right on Mac
---
# {{ page.title }}

Opening a brand new MacBook is a pleasant experience. There are, however, a few tunings I do on my Mac, before I start feeling comfortable with it. At first I get my dotfiles from GitHub and then I compile VIM, because the default VIM in OS X Lion is compiled without Ruby support.

When you have VIM with Ruby support, you can

* Use [Command-T](https://wincent.com/products/command-t), the superb file navigation plugin 
* Enjoy Ruby syntax awareness (syntax coloring, proper indentation of code)

The information in this article is also applicable to other \*nix systems than OS X. The compilation and Command-T installation steps are not specific to Mac, but you might need additional compilation parameters on other systems.

Don't get too seriously the "right" in the title; the purpose of this article is to document how to compile VIM and inspire VIM users to try out Command-T.

## Compiling VIM

VIM can tell you which features it supports. Type in `vim --version | grep ruby`. If the printed lines contain _-ruby_, it means that your VIM is compiled without Ruby support. In case VIM already has Ruby support, as it has in most Ubuntus for example, you can skip compiling and [install Command-T](#installing_commandt) straight away.

Start by cloning VIM \(you need a [Mercurial client](http://mercurial.selenic.com/)\):

`hg clone https://vim.googlecode.com/hg/ vim`

Then compile:

`cd vim`

`./configure --enable-rubyinterp --with-features=huge -prefix=/usr`

`make`

You can give the compiled binary a try by running it with the command `src/vim`. If everything feels alright, you can install VIM with:

`sudo make install`

This places VIM into _/usr/bin_. Your compiled VIM is now ready for use.

## Installing Command-T

Have you ever seen those guys with incredible dexterity in keyboarding and text editing on command line? They are probably using VIM. However, file navigation is clumsy in VIM, unless you use proper add-ons. Command-T is a plugin you want to try out if you are serious about doing things on command-line interface.

Start by downloading the plugin \(the link is from the [plugin's home page](http://www.vim.org/scripts/script.php?script_id=3025)\):

`curl -L http://www.vim.org/scripts/download_script.php?src_id=17084 > /tmp/command-t-1.3.1.vba`

Then install the plugin:

`vim /tmp/command-t-1.3.1.vba`

In VIM, type `:so %` to source the plugin. The remaining step is to compile the C extension:

`cd ~/.vim/ruby/command-t`

`ruby extconf.rb`

`make`

Your Command-T powered VIM is now ready for use. Open VIM in your project's root and hit the _leader+T_ key combination to access the Command-T presentation of your project's files. Its almost obscenely cool.

One more thing. On Finnish Mac keyboards the default leader key _'\\'_ is difficult to press – you need three key presses for it. I suggest that you bind your leader key to _','_ by adding `:let mapleader = ","` into your _.vimrc_.

## Afterword: VIM, VIm or Vim?

VIM is an abbreviation for VI Improved. VI in turn stands for "visual" in Ex. VI is also the editor created by Bill Joy.

Bram Moolenaar, the creator of VIM, types VIM with capital letters. Rendering the word or words as the creator wishes is a fair principle to follow.
