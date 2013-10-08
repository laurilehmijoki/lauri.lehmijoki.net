---
layout: default
title: lauri lehmijoki
---
## Work

Coding at [Reaktor](http://www.reaktor.fi/en).

## Social

* [GitHub](https://github.com/laurilehmijoki)

## Interests

Coding, yoga, literature, politics, economics, natural languages, Star Trek. Nerding in general.

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

lauri.lehmijoki@iki.fi

[LinkedIn](http://fi.linkedin.com/in/laurilehmijoki)

[Twitter](https://twitter.com/#!/laurilehmijoki)

[Facebook](https://www.facebook.com/lauri.lehmijoki)
