---
layout: default
title: lauri lehmijoki
---
## Work

I'm a programmer. I work at [Reaktor](http://reaktor.fi).

### Open source

[s3_website](https://github.com/laurilehmijoki/s3_website) –
  A command-line tool for deploying static websites into AWS S3

[HavaRunner](https://github.com/havarunner/havarunner) –
  A test framework with built-in concurrency support, scenarios and handy suites

[Unistack](http://laurilehmijoki.github.io/unistack/) –
  A starter kit for building JavaScript apps with Node.js, React and Bacon

## Articles
{% for post in site.posts limit:4%}

* {{ post | create_article_link }}

{% endfor %}

and [more](/articles/).

## Translations into Finnish

{% for page in site.pages %}
  {% if page.layout == 'translation' %}

  * [{{page.title}}]({{page.url}})

  {% endif %}
{% endfor %}

## Contact

lauri.lehmijoki@iki.fi | [LinkedIn](http://fi.linkedin.com/in/laurilehmijoki) | [Twitter](https://twitter.com/laurilehmijoki)
