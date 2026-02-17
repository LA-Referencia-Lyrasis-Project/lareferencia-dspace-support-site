---
layout: home

title: "Início"
description: "Página inicial do template"

language: pt
language_reference: home
---

<p class="lead-text">Bem-vindo a este template multilíngue em Jekyll. Use esta página inicial para apresentar seu projeto e destacar atualizações.</p>

{% assign posts = site.posts | where: "language", page.language | where: "published", true | sort: "home_order" %}

<ul class="post-item-list">
  {% for post in posts %}
    <li class="post-item">
      <a class="post-item-title" href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }} <a class="post-item-excerpt" href="{{ site.baseurl }}{{ post.url }}">ler mais</a>
    </li>
  {% endfor %}
</ul>
