---
layout: default
title: lauri lehmijoki
---
## Work

Coding at [Reaktor](http://www.reaktor.fi/en).

### Open source

[s3_website](https://github.com/laurilehmijoki/s3_website) –
  A command-line tool for deploying static websites into AWS S3

[HavaRunner](https://github.com/havarunner/havarunner) –
  A JUnit runner with built-in concurrency support, scenarios and handy suites

## Articles
{% for post in site.posts limit:4%}

* {{ post | create_article_link }}

{% endfor %}

and [more](/articles.html).

## Translations into Finnish

{% for page in site.pages %}
  {% if page.layout == 'translation' %}

  * [{{page.title}}]({{page.url}})

  {% endif %}
{% endfor %}

## Contact

lauri.lehmijoki@iki.fi | [LinkedIn](http://fi.linkedin.com/in/laurilehmijoki) | [Twitter](https://twitter.com/#!/laurilehmijoki) | [Facebook](https://www.facebook.com/lauri.lehmijoki)
