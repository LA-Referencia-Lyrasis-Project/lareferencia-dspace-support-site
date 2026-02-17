---
layout: home

title: "Início"
description: "Página principal"

language: pt
language_reference: home
---

<section class="home-intro-panel">
  <p class="lead-text">Este site é o ponto de entrada do programa de suporte técnico DSpace da LA Referencia - Lyrasis.</p>
  <p>Seu objetivo é orientar instituições para resolver primeiro com documentação e guias práticos, e abrir ticket apenas quando for realmente necessário.</p>
  <p>O modelo de trabalho prioriza a resolução autônoma com informação estruturada e apoio técnico quando necessário.</p>
</section>

<section class="home-flow">
  <h2 class="custom-heading">Como usar este portal</h2>
  <ol class="home-flow-steps">
    <li><strong>Explore a documentação</strong> para entender contexto e requisitos.</li>
    <li><strong>Revise as FAQs</strong> e casos comuns de implementação.</li>
    <li><strong>Faça a autoavaliação</strong> para classificar sua necessidade.</li>
    <li><strong>Encaminhe para ticket</strong> apenas se precisar de suporte especializado.</li>
  </ol>
</section>

<section class="home-routes-intro">
  <h2 class="custom-heading">Quatro opções principais</h2>
  <p>Selecione a opção que melhor descreve sua situação atual e acesse um guia completo com navegação por seções, recomendações e encaminhamento final para suporte.</p>
</section>

{% assign posts = site.posts | where: "language", page.language | where: "published", true | sort: "home_order" %}

<ul class="post-item-list home-route-grid">
  {% for post in posts %}
    <li class="post-item home-route-card">
      <p class="home-route-kicker">Opção {{ forloop.index }}</p>
      <a class="post-item-title home-route-title" href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
      <div class="home-route-excerpt">{{ post.excerpt }}</div>
      <a class="cta-button home-route-link" href="{{ site.baseurl }}{{ post.url }}">Ver seção completa</a>
    </li>
  {% endfor %}
</ul>
