---
layout: post
title:  "Estructura del Template"
date:   2024-02-01 00:00:00 +0200
description:  "Cómo se organiza este template"
language: es
language_reference: template-structure
home_order: 2
categories: post
published: false
---

Este starter está organizado para facilitar el mantenimiento de contenido multilingüe y navegación.

<h2 class="custom-heading">Capas de Contenido</h2>

<div class="service-components">
  <div class="service-item">
    <h4>Configuración</h4>
    <p>Valores globales, plugins, defaults de idioma y build se gestionan en <code>_config.yml</code> y <code>_config_github.yml</code>.</p>
  </div>

  <div class="service-item">
    <h4>Layouts e Includes</h4>
    <p>La estructura visual reutilizable vive en <code>_layouts</code> y <code>_includes</code>, manteniendo las páginas limpias.</p>
  </div>

  <div class="service-item">
    <h4>Páginas Localizadas</h4>
    <p>El contenido estático está agrupado por idioma en <code>_pages/en</code>, <code>_pages/es</code> y <code>_pages/pt</code>.</p>
  </div>

  <div class="service-item">
    <h4>Posts Localizados</h4>
    <p>Las entradas también están separadas por idioma en <code>_posts</code>, usando <code>language_reference</code> para vincular equivalentes.</p>
  </div>
</div>

<h2 class="custom-heading">Flujo de Trabajo Sugerido</h2>

<div class="workflow-container">
  <div class="workflow-step">
    <div class="step-content">
      <h4>1. Configurar Metadatos</h4>
      <p>Actualiza nombre del proyecto, descripción, URLs y datos de contacto.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>2. Reemplazar Contenido de Ejemplo</h4>
      <p>Edita páginas y posts en cada idioma con la información real de tu proyecto.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>3. Probar Localmente</h4>
      <p>Usa Ruby local o scripts Docker para validar diseño, enlaces y cambio de idioma.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>4. Publicar en GitHub Pages</h4>
      <p>Haz push a la rama principal y deja que GitHub Actions publique el sitio.</p>
    </div>
  </div>
</div>
