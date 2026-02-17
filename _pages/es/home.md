---
layout: home

title: "Inicio"
description: "Página principal del template"

language: es
language_reference: home
---

<p class="lead-text">Bienvenido a este template multilingüe de Jekyll. Usa esta página principal para presentar tu proyecto y destacar novedades.</p>

{% assign posts = site.posts | where: "language", page.language | where: "published", true | sort: "home_order" %}

<ul class="post-item-list">
  {% for post in posts %}
    <li class="post-item">
      <a class="post-item-title" href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }} <a class="post-item-excerpt" href="{{ site.baseurl }}{{ post.url }}">leer más</a>
    </li>
  {% endfor %}
</ul>
