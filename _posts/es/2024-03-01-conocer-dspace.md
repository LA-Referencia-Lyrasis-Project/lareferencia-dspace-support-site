---
layout: post
title: "Quiero conocer más sobre DSpace"
date: 2024-03-01 00:00:00 +0200
description: "Información general sobre DSpace"
language: es
language_reference: conocer
home_order: 1
categories: post
published: true
permalink: /es/conocer/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Esta sección está orientada a instituciones que están explorando DSpace o evaluando su implementación como repositorio institucional.</p>

Explora qué es DSpace, su arquitectura, componentes principales y recursos oficiales para entender si es la solución adecuada para tu institución.

<!--more-->

<div class="note-container">
  <div class="note-header">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <circle cx="12" cy="12" r="10"></circle>
      <line x1="12" y1="8" x2="12" y2="12"></line>
      <line x1="12" y1="16" x2="12.01" y2="16"></line>
    </svg>
    <h4>Navegación</h4>
  </div>
  <div class="note-content">
    <ul>
      <li><a href="#documentacion">Documentación</a></li>
      <li><a href="#faq">Preguntas Frecuentes</a></li>
      <li><a href="#evaluacion">Autoevaluación</a></li>
      <li><a href="#soporte">Derivación a Soporte</a></li>
    </ul>
  </div>
</div>

---

<h2 class="custom-heading" id="documentacion">Documentación</h2>

<div class="architecture-details">
  <div class="detail-box">
    <h4>¿Qué es DSpace?</h4>
    <p>DSpace es una plataforma open source para repositorios digitales, ampliamente utilizada por instituciones académicas y de investigación para preservar y dar acceso a contenidos digitales.</p>
  </div>

  <div class="detail-box">
    <h4>Arquitectura General</h4>
    <p>DSpace 7.x y 8.x utilizan una arquitectura de dos capas: backend REST API (Java/Spring Boot) y frontend (Angular). Requiere PostgreSQL y Solr para funcionar.</p>
  </div>

  <div class="detail-box">
    <h4>Componentes Principales</h4>
    <p><strong>Backend:</strong> API REST, gestión de contenidos, workflows.<br>
    <strong>Frontend:</strong> Interfaz de usuario Angular.<br>
    <strong>Solr:</strong> Motor de búsqueda e indexación.<br>
    <strong>PostgreSQL:</strong> Base de datos relacional.</p>
  </div>

  <div class="detail-box">
    <h4>Versiones Actuales</h4>
    <p>DSpace 8.x (última versión estable) y DSpace 7.x (ampliamente adoptada). Las versiones anteriores (5.x, 6.x) están en desuso.</p>
  </div>
</div>

<h3 class="custom-heading-secondary">Recursos Oficiales</h3>

<ul>
  <li><a href="https://dspace.lyrasis.org/" target="_blank" rel="noopener">Sitio oficial de DSpace</a></li>
  <li><a href="https://wiki.lyrasis.org/display/DSDOC8x" target="_blank" rel="noopener">Documentación DSpace 8.x</a></li>
  <li><a href="https://github.com/DSpace/DSpace" target="_blank" rel="noopener">Repositorio GitHub</a></li>
</ul>

---

<h2 class="custom-heading" id="faq">Preguntas Frecuentes</h2>

<div class="service-components">
  <div class="service-item">
    <h4>¿Qué versión de DSpace debo elegir?</h4>
    <p>Para nuevas instalaciones, se recomienda DSpace 8.x. Si tu institución ya tiene experiencia con DSpace 7.x, esa versión sigue siendo sólida y con soporte activo.</p>
  </div>

  <div class="service-item">
    <h4>¿Docker o instalación tradicional?</h4>
    <p>Docker simplifica el despliegue y es ideal para desarrollo y pruebas. Para producción, muchas instituciones prefieren instalación tradicional para mayor control, aunque Docker Compose también es viable.</p>
  </div>

  <div class="service-item">
    <h4>¿Cuál es la infraestructura mínima realista?</h4>
    <p>Mínimo: 4 GB RAM, 2 CPU cores, 50 GB almacenamiento. Recomendado para producción: 8+ GB RAM, 4+ CPU cores, almacenamiento escalable según colección.</p>
  </div>
</div>

---

<h2 class="custom-heading" id="evaluacion">Autoevaluación</h2>

<p>Antes de solicitar soporte, evalúa tu situación:</p>

<div class="workflow-container">
  <div class="workflow-step">
    <div class="step-content">
      <h4>Necesito orientación arquitectónica</h4>
      <p>Si estás planificando la infraestructura técnica y necesitas asesoría sobre dimensionamiento, arquitectura de red o integración con sistemas existentes.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>No tengo equipo técnico interno</h4>
      <p>Si tu institución carece de personal técnico con experiencia en Java, Angular o administración de sistemas Linux.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Estoy planificando una implementación</h4>
      <p>Si necesitas acompañamiento en la fase de planificación: definición de requisitos, cronograma, recursos necesarios.</p>
    </div>
  </div>
</div>

---

<h2 class="custom-heading" id="soporte">Derivación a Soporte</h2>

<p>Si después de revisar la documentación y FAQ necesitas orientación personalizada, puedes crear un ticket de tipo <strong>"Orientación"</strong>.</p>

<div class="support-cta">
  <h3>¿Necesitas ayuda?</h3>
  <p>Nuestro equipo puede ayudarte con consultas sobre arquitectura, planificación de implementación y evaluación de DSpace para tu institución.</p>
  <a href="{{ site.baseurl }}/es/ticket" class="cta-button">Crear Ticket de Orientación</a>
</div>
