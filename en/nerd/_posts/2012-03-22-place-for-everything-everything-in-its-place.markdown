---
layout: article-en
title: A place for everything and everything in its place
---
# {{ page.title }}

#### Using Dropbox, GitHub and other cloud services to keep personal data organised

The old proverb _A place for everything and everything in its place_ contains
powerful ideas. It conveys the message that it is possible to have things where
they belong, and that there also exist a schema for putting everything in the
correct location. 

One could hastily conclude that the proverb applies only to the the world of
material things. That it solely means, for example,  that a flower should either
be in a vase or growing in the ground. Let it not be so – the saying has also
implications in abstract thinking and the world of ideas. For the computer
programmer this can present certain questions, "Is my function in the right class? Is
the class in the right module?"

Furthermore, this proverb is a reminder of the sentiment that its worth keeping
things where they belong and to have a mental framework for placing things into
their right place. Otherwise, confusion sneaks in, thus rendering the creation
of valuable artifacts impossible. Building a beautiful piece of software or
writing an enjoyable book is not possible without the structure of where ideas
should be nor and the discipline to stick to the framework.

This article is not, however, about the philosophical implications of this
proverb. Rather, it is about the practical applications within the realm of
computer files and data storage.

## Where are my files?

Dropbox, GitHub, Google Docs and Chrome make it possible to keep all your files
automatically backed up and synchronized across all your computers and other
technology devices. They also make the imported data easily available.  Yet all
this is of little help if you don't have the mental map between a certain file
or document and the place where it should _exactly_ be.

### Code: GitHub and Dropbox

GitHub is a magnificent place for sharing code. I keep my public personal
projects there. The projects that are private or pendent I keep in Dropbox.

<pre><code>Dropbox
|––– Git
|    |––– REPOSITORIES.markdown
|    |––– (private repo 1)
|    └––– (...)
└––– (other Dropbox directories)
</code></pre>

The file _REPOSITORIES.markdown_ is there to remind me of all the possible
places where my code can be located. Its a good idea to leave short pieces of
documentation after you. Writing a few lines of documentation clarifies your
thoughts and helps you build the mental map of where everything is.

<pre><code>$ cat REPOSITORIES.markdown
# Locations of repositories

My Git repos are either here or in [GitHub](https://github.com/laurilehmijoki).
</code></pre>

The software projects that I actively work on are in the _Projects_ directory.

<pre><code>Dropbox
|––– Projects
|    |––– ACTIVEPROJECTS.markdown
|    |––– lauri.lehmijoki.net
|    └––– (...)
└––– (other Dropbox directories)
</code></pre>

_ACTIVEPROJECTS.markdown_ states that my active projects are in "this
directory". It also hints as to where my passive projects are.

### Documents: Dropbox and Google Docs

I like to keep my notes in the
[Markdown](http://daringfireball.net/projects/markdown/) format and store them
in Dropbox. Editing text files in the local file system with VIM is much faster
and more fun than using Google Docs. Over the years I've stored a bunch of
documents into Google Docs, and they may remain there, since I plan to stick to
my Google account.

<pre><code>Dropbox
|––– Docs
|    |––– DOCUMENTS.markdown
|    |––– (document 1)
|    └––– (...)
└––– (other Dropbox directories)
</code></pre>

The _DOCUMENTS.markdown_ serves the same purpose as _REPOSITORIES.markdown_. It
states the location of my documents (Dropbox or Google Docs).

### E-books: Dropbox, Kindle and Pragmatic Bookshelf

I have three places for e-books: Dropbox, Kindle and the [Pragmatic
Bookshelf](http://pragprog.com) \(PragProg\). PragProg has a convenient service:
they can send books to your Kindle. However, this operation doesn't record the
sent books into the Kindle storage on Amazon, effectively forcing me to manually
back up the bought books or to consider PragProg as one of my digital
bookshelves. I chose to consider PragProg as a bookshelf.

<pre><code>Dropbox
|––– Books-n-Articles
|    |––– ARTICLES.markdown
|    |––– BOOKS.markdown
|    |––– Language
|    |––– Politics
|    |––– Programming
|    |––– Yoga
|    └––– (...)
└––– (other Dropbox directories)
</code></pre>

_BOOKS.markdown_ states that I store my e-books in three places.
_ARTICLES.markdown_ says that my articles are either in Dropbox or as bookmarks
in Chrome.

### Bookmarks: Chrome

Keeping bookmarks in Chrome became sensible when Google added the
synchronisation feature, which connects your Chrome to your Google account.
Among other things, the sync feature stores the bookmarks you put into Chrome
into Google's cloud. This means that your browser bookmarks are no longer local
to your particular computer. This is a big thing.

It is not an advisable idea to bookmark every web site that has something that you might
want to read later. This will result in a large pile of bookmarks that you never
read.

I have three bookmark folders:

1. VIM

   VIM tips. [Anti-patterns](http://blog.sanctum.geek.nz/tag/anti-patterns/).
   Explanation on [why VIM uses 'hjkl'](http://www.catonmat.net/blog/why-vim-uses-hjkl-as-arrow-keys/). 
   Other VIM links.

2. In-depth tech

   [NoSQL data modeling techniques](http://highlyscalable.wordpress.com/2012/03/01/nosql-data-modeling-techniques).
   [What every computer science major should know](http://matt.might.net/articles/what-cs-majors-should-know/). 
   Other insightful, technology-related articles.

3. \*nix

   [All commands sorted by vote](http://www.commandlinefu.com/commands/browse/sort-by-votes).
   Other Unix and Linux related links.

In the future I might invent another category for my bookmarks. 

Web pages that I need and haven't yet bookmarked I either remember by heart or
use keywords so then I know how to google them later.

## Conclusion

Keeping all data in place and having a place for all data is bliss – **it
saves you from cognitive dissonance**, the discomfort caused by holding
conflicting ideas simultaneously.

Furthermore, the place-for-everything schema gives you a way of inferring where
to store all your valuable data in the future. You'll soon notice that small
gems start piling up in all the right places. **Storing data and files starts to
make sense.**

**Writing down your own data storing conventions saves your brain power.** It
eliminates the need to keep information in your head and forces you to rethink
your decisions. All this results in better-organised data. The Markdown format
is one of the most used human-readable text formats with semantic markup.  **I
recommend Markdown for documentation.** It is easy to read and write with and
has available software for converting it to HTML, for example.
