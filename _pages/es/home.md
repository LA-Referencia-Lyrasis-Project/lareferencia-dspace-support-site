---
layout: home

title: "Inicio"
description: "Página principal del template"

language: es
language_reference: home
---

<section class="home-intro-panel">
  <p class="lead-text">Este sitio es el punto de entrada al programa de soporte técnico DSpace de LA Referencia - Lyrasis.</p>
  <p>Su objetivo es orientar a las instituciones para resolver primero con documentación y guías prácticas, y derivar a ticket solo cuando realmente sea necesario.</p>
  <p>El modelo de trabajo prioriza la resolución autónoma con información estructurada y acompañamiento técnico cuando corresponde.</p>
</section>

<section class="home-flow">
  <h2 class="custom-heading">Cómo usar este portal</h2>
  <ol class="home-flow-steps">
    <li><strong>Explora documentación</strong> para entender contexto y requisitos.</li>
    <li><strong>Revisa FAQ</strong> y casos frecuentes de implementación.</li>
    <li><strong>Realiza autoevaluación</strong> para clasificar tu necesidad.</li>
    <li><strong>Deriva a ticket</strong> solo si necesitas soporte especializado.</li>
  </ol>
</section>

<section class="home-routes-intro">
  <h2 class="custom-heading">Cuatro opciones principales</h2>
  <p>Selecciona la opción que mejor describe tu situación actual y accede a una guía completa con navegación por secciones, recomendaciones y derivación final a soporte.</p>
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
