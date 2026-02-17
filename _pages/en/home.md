---
layout: home

title: "Home"
description: "Template home page"

language: en
language_reference: home
---

<p class="lead-text">Welcome to this multilingual Jekyll template. Use this home page to introduce your project and highlight recent updates.</p>

{% assign posts = site.posts | where: "language", page.language | where: "published", true | sort: "home_order" %}

<ul class="post-item-list">
  {% for post in posts %}
    <li class="post-item">
      <a class="post-item-title" href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }} <a class="post-item-excerpt" href="{{ site.baseurl }}{{ post.url }}">read more</a>
    </li>
  {% endfor %}
</ul>
