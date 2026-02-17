---
layout: post
title:  "Template Structure"
date:   2024-02-01 00:00:00 +0200
description:  "How this template is organized"
language: en
language_reference: template-structure
home_order: 2
categories: post
published: false
---

This starter is organized to make multilingual content and navigation easy to maintain.

<h2 class="custom-heading">Content Layers</h2>

<div class="service-components">
  <div class="service-item">
    <h4>Configuration</h4>
    <p>Global values, plugins, language defaults, and build settings are managed in <code>_config.yml</code> and <code>_config_github.yml</code>.</p>
  </div>

  <div class="service-item">
    <h4>Layouts and Includes</h4>
    <p>Reusable visual structure lives in <code>_layouts</code> and <code>_includes</code>, keeping pages clean and consistent.</p>
  </div>

  <div class="service-item">
    <h4>Localized Pages</h4>
    <p>Static page content is grouped by language under <code>_pages/en</code>, <code>_pages/es</code>, and <code>_pages/pt</code>.</p>
  </div>

  <div class="service-item">
    <h4>Localized Posts</h4>
    <p>Blog entries are also language-separated in <code>_posts</code>, with <code>language_reference</code> linking equivalents.</p>
  </div>
</div>

<h2 class="custom-heading">Suggested Workflow</h2>

<div class="workflow-container">
  <div class="workflow-step">
    <div class="step-content">
      <h4>1. Configure Site Metadata</h4>
      <p>Start by updating project name, description, URLs, and contact information.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>2. Replace Sample Content</h4>
      <p>Edit pages and posts in each language with your real content and structure.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>3. Test Locally</h4>
      <p>Use local Ruby or Docker scripts to validate layout, links, and language switches.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>4. Deploy to GitHub Pages</h4>
      <p>Push to the default branch and let GitHub Actions publish the static site.</p>
    </div>
  </div>
</div>
