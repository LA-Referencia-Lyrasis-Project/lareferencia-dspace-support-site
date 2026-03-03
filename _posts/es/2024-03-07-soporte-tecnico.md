---
layout: post
title: "Problemas con DSpace"
date: 2024-03-06 00:00:00 +0200
description: "Soporte para instalaciones DSpace operativas"
language: es
language_reference: soporte-tecnico
home_order: 4
categories: post
published: true
permalink: /es/soporte-tecnico/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Soporte para instalaciones DSpace 8/9 ya operativas. </p>

<!--more-->

<div class="note-container">
  <div class="note-header">
    <h4>Navegación</h4>
  </div>
  <div class="note-content">
    <ul>
      <li><a href="#clasificacion">Clasificación por componente</a></li>
      <li><a href="#checklist">Checklist antes de reportar</a></li>
      <li><a href="#soporte">Derivación a soporte</a></li>
    </ul>
  </div>
</div>

---

<h2 class="custom-heading" id="clasificacion">1. ¿Qué componente presenta el problema?</h2>

<p>
Identifica primero el área afectada. Esto permitirá clasificar correctamente el incidente.
</p>

<div class="workflow-container">

  <div class="workflow-step">
    <div class="step-content">
      <h4>Base de Datos (PostgreSQL)</h4>
      <p>Errores de conexión, lentitud extrema, problemas de integridad de datos.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Solr (Índice de búsqueda)</h4>
      <p>Búsqueda no devuelve resultados, indexación incompleta o errores en cores.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Backend (API REST)</h4>
      <p>Errores 500, problemas de autenticación</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Frontend (Angular)</h4>
      <p>errores en consola del navegador, problemas visuales o con personalizaciones.</p>
    </div>
  </div>

</div>

---

<h2 class="custom-heading" id="checklist">2. Checklist antes de reportar</h2>

<p>
Antes de crear el ticket, prepara la siguiente información:
</p>

<ul>
  <li>Versión exacta de DSpace (8.x / 9.x)</li>
  <li>Sistema operativo y entorno</li>
  <li>Componente afectado</li>
  <li>Descripción clara del problema y pasos para reproducirlo</li>
  <li>Logs relevantes</li>
</ul>

<p>
Un ticket sin logs o sin descripción reproducible retrasa el diagnóstico.
</p>

---

<h2 class="custom-heading" id="soporte">Derivación a soporte</h2>

<p>
Si ya realizaste el diagnóstico básico y el problema persiste, puedes escalar el incidente.
</p>

<div class="support-cta">
  <h3>Crear Ticket de Incidente</h3>
  <p>
  El ticket será clasificado según componente y severidad para priorización técnica.
  </p>
  <a href="{{ site.baseurl }}/es/ticket?tipo=incidente" class="cta-button">
    Crear Ticket
  </a>
</div>