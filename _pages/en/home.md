---
layout: home

title: "Home"
description: "Main page"

language: en
language_reference: home
---

<section class="home-intro-panel">
  <p class="lead-text">This site is the entry point for the DSpace technical support program of LA Referencia - Lyrasis.</p>
  <p>Its objective is to guide institutions to resolve issues first through documentation and practical guides, and create tickets only when truly necessary.</p>
  <p>The working model prioritizes self-resolution with structured information and technical support when needed.</p>
</section>

<section class="home-flow">
  <h2 class="custom-heading">How to use this portal</h2>
  <ol class="home-flow-steps">
    <li><strong>Explore documentation</strong> to understand context and requirements.</li>
    <li><strong>Review FAQs</strong> and common implementation cases.</li>
    <li><strong>Run self-assessment</strong> to classify your need.</li>
    <li><strong>Escalate to ticket</strong> only if you need specialized support.</li>
  </ol>
</section>

<section class="home-routes-intro">
  <h2 class="custom-heading">Four main options</h2>
  <p>Select the option that best describes your current situation and access a complete guide with section-based navigation, recommendations, and final support escalation.</p>
</section>

{% assign posts = site.posts | where: "language", page.language | where: "published", true | sort: "home_order" %}

<ul class="post-item-list home-route-grid">
  {% for post in posts %}
    <li class="post-item home-route-card">
      <p class="home-route-kicker">Option {{ forloop.index }}</p>
      <a class="post-item-title home-route-title" href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
      <div class="home-route-excerpt">{{ post.excerpt }}</div>
      <a class="cta-button home-route-link" href="{{ site.baseurl }}{{ post.url }}">See full section</a>
    </li>
  {% endfor %}
</ul>
