---
layout: default
title: Articles
---
# All articles

{% for post in site.posts %}

* [{{post.title}}]({{post.url}}) \({{post.categories[1]}}\)

{% endfor %}
