---
layout: home

title: "Inicio"
description: "Página principal del template"

language: es
language_reference: home
---

<section class="home-intro-panel">
  <p>Este sitio es el punto de entrada al programa de soporte técnico DSpace de LA Referencia-Lyrasis.</p>
  <p>Selecciona tu situación actual para acceder a documentación, recursos y derivación a soporte especializado.</p>
</section>

<section class="home-routes-intro">
  <h2 class="custom-heading">Selecciona tu situación</h2>
  <p>Cada sección incluye documentación oficial, recursos comunitarios, problemas resueltos y acceso a creación de ticket.</p>
</section>

{% assign posts = site.posts | where: "language", page.language | where: "published", true | sort: "home_order" %}

<ul class="post-item-list home-route-grid">
  {% for post in posts %}
    <li class="post-item home-route-card">
      <p class="home-route-kicker">Opción {{ forloop.index }}</p>
      <a class="post-item-title home-route-title" href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
      <div class="home-route-excerpt">{{ post.excerpt }}</div>
      <a class="cta-button home-route-link" href="{{ site.baseurl }}{{ post.url }}">Ver sección completa</a>
    </li>
  {% endfor %}
</ul>
