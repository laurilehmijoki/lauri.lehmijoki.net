---
layout: article-en
title: Jekyll and the right tools for the right job
published: true
---
#### Jekyll is an example of a tool that lets you concentrate on the problem and skip irrelevant details

Jekyll, the blog and web-site tool for hackers, is excellent for what its made
for. Jekyll allows you to set up a web site in a few minutes. For example, if
you would like to run this site on your computer, you could do it in three
lines, assuming you have Ruby and Ruby Bundler installed:

`bundle install`

`git clone git://github.com/laurilehmijoki/lauri.lehmijoki.net.git blog`

`cd blog && jekyll --server`

The command `jekyll --server` converts the Markdown files and HTML templates
into HTML files and starts up an HTTP server at your
[localhost:4000](http://localhost:4000).

Modifying content is easy. If you think the front-page of this site most
definitely needs a picture of Jean-Luc Picard, you could edit the file
_index.markdown_ in the blog directory, add the picture and see the image of the
starship captain right away on the browser.

## How Jekyll works

Jekyll is a static web site generator that produces .html files and other static
files which can be deployed on a web server. Any web server that can serve static
files will do. For example, you can use Amazon S3 for hosting your Jekyll site,
meaning static files, no security or hosting problems, blazingly fast delivery.
Jekyll is great for personal or team sites.

Jekyll has the following features:

- A content-conversion engine
- A lightweight templating engine
- Plugin support
- A web server for local deployment of the site

The content conversion engine turns your blog texts and articles into HTML. You
can use Markdown, the text format for web writers, in your documents – and Jekyll
will automatically convert them into HTML. Writing in Markdown syntax instead of
HTML lets you concentrate on the text and ideas in your mind. Its like having a
WYSIWYG editor in your command-line interface.

The lightweight templating engine saves you from the burden of repetition,
making it trivial to maintain a list of your three latest blog posts on the
front-page, for example.

Jekyll is designed to be extended. You can write your own plugins that convert
e.g., LaTeX into HTML. In fact, the [built-in
converters](https://github.com/mojombo/jekyll/tree/master/lib/jekyll/converters)
themselves are made with the plugin system. In addition to converters, its
possible to write new tags that emit data into the generated HTML files. The
tags are written in Ruby, and they can do anything that Ruby scripts can.

Lastly, when you write your texts, it helps to see them in their final form.
Jekyll's web server can automatically generate the site every time you save your
Markdown file. Just refresh your browser and you can view your site as
re-generated by Jekyll.

## Jekyll is not for everybody

There exists a multitude of content management systems, CMSs, in the world. If
you like writing, designing web site content structure and the command-line
interface, Jekyll is probably the one for you. On the other hand, if you need to
set up a site that a non-technical person is going to maintain, Wordpress might
be a better option.

## The right tool for the right job

Choosing the right tool for the right job is of paramount importance in
programming and system implementation. With wrong the tools you end up spending a
lot of time on irrelevant intricacies of the particular technology, the time you
could have spent on doing the actual task you wanted to achieve.

Jekyll exhibits **the following qualities of the right tool for the right
job**:

- **It allows you to concentrate on the domain "problem"**

  The right tools for the right job _really_ help you. They don't make your life
  more difficult, nor do they distract your concentration; instead, they let you
  put your mind onto the actual problem you are trying to solve.

  Jekyll lets you focus on the content of the site and the structure of the
  documents. Writing in Markdown in VIM is the closest connection you and your
  article can get (excluding paper and pencil). Jekyll also allows you to model
  the content structure as file system directories. With Markdown, templating
  and content structuring Jekyll becomes the
  [DSL](http://en.wikipedia.org/wiki/Domain-specific_language) of geek blogging.

- **It does one thing well**

  The right tools for the right job solve one problem well. They do not pretend
  to be all-around tools.

  Jekyll is a superb web site tool for nerds. It does not intend to be the best
  CMS for everybody.

- **It has an enthusiastic user community**

  An active and enthusiastic user community proves that there is something
  valuable in a tool.

  Jekyll has plenty of users – and GitHub pages support it. Even [Werner uses
  it](http://www.allthingsdistributed.com/2011/08/Jekyll-amazon-s3.html).
