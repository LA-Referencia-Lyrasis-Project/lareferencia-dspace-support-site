---
layout: post
title: "Migrando a DSpace 8/9"
date: 2024-03-02 00:00:00 +0200
description: "Actualización y migración de instalaciones DSpace"
language: es
language_reference: migrar
home_order: 2
categories: post
published: true
permalink: /es/migrar/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Guías técnicas y experiencias para pasar de DSpace 5/6 a 8/9.</p>

<!--more-->

<div class="note-container">
  <div class="note-header">
    <h4>Navegación</h4>
  </div>
  <div class="note-content">
    <ul>
      <li><a href="#documentacion">Documentación de migración</a></li>
      <li><a href="#etapas">Etapas del proceso</a></li>
      <li><a href="#problemas">Problemas frecuentes</a></li>
      <li><a href="#soporte">Derivación a soporte</a></li>
    </ul>
  </div>
</div>

---

<h2 class="custom-heading" id="documentacion">Documentación de migración</h2>

<p>
Antes de iniciar cualquier procedimiento técnico, revisa la documentación oficial y las guías específicas de migración.
</p>

<ul>
  <li><strong><a href="https://wiki.lyrasis.org/pages/viewpage.action?pageId=397869334#">Guía oficial de migración DSpace 5/6 → 8/9</a></strong></li>
  <li><strong><a href="https://github.com/LA-Referencia-Lyrasis-Project/tutoriais-dspace/blob/main/migracion-dspace-es.md">Scripts y herramientas recomendadas</a></strong></li>
</ul>

<p>
Se recomienda no comenzar la instalación sin haber revisado previamente estas guías.
</p>

---

<h2 class="custom-heading" id="etapas">Etapas del proceso de migración</h2>

<p>
Identifica en qué etapa te encuentras para acceder a recursos específicos.
</p>

<div class="workflow-container">

  <div class="workflow-step">
    <div class="step-content">
      <h4>1. Planificación</h4>
      <p>Evaluación de infraestructura, análisis de personalizaciones existentes y definición de estrategia de migración.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>2. Instalación del Backend</h4>
      <p>Configuración de entorno, despliegue de API REST, conexión a base de datos y Solr.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>3. Instalación del Frontend</h4>
      <p>Despliegue Angular, configuración de entorno y conexión con backend.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>4. Migración de datos</h4>
      <p>Conversión y validación de base de datos, indexación y pruebas funcionales.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>5. Personalizaciones</h4>
      <p>Adaptación de temas, configuraciones avanzadas y ajustes específicos de la institución.</p>
    </div>
  </div>

</div>

---

<h2 class="custom-heading" id="problemas">Clasificación del problema</h2>

<p>
Antes de crear un ticket, identifica la situación que estás experimentando durante la migración:
</p>

<div class="service-components">

  <div class="service-item">
    <h4>Tengo una duda sobre el proceso</h4>
    <p>No estás seguro de cómo ejecutar un paso de la migración o interpretar la documentación.</p>
    <p><strong>Tipo de ticket:</strong> Consulta técnica.</p>
  </div>

  <div class="service-item">
    <h4>Estoy viendo un mensaje de error</h4>
    <p>Durante la migración aparece un error en consola, logs o scripts.</p>
    <p>Revisa primero la documentación y los logs del sistema.</p>
  </div>

  <div class="service-item">
    <h4>La migración se encuentra bloqueada</h4>
    <p>El proceso no puede continuar después de seguir la documentación y revisar errores conocidos.</p>
    <p><strong>Tipo de ticket:</strong> Incidente técnico.</p>
  </div>

</div>

---

<h2 class="custom-heading" id="soporte">Derivación a soporte</h2>

<p>
Si necesitas crear un ticket, prepara previamente la siguiente información:
</p>

<ul>
  <li>Versión origen (5.x o 6.x)</li>
  <li>Versión destino (8.x o 9.x)</li>
  <li>Etapa del proceso en la que te encuentras</li>
  <li>Descripción clara del problema</li>
  <li>Logs relevantes (backend y/o frontend)</li>
</ul>

<p style="margin-top:15px; font-size:0.95em; color:#555;">
⚠️ Para crear un ticket necesitas una cuenta en GitHub. 
<a href="https://github.com/signup" target="_blank">Crear cuenta</a>
</p>

<div class="support-cta">
  <h3>Solicitar soporte de migración</h3>
  <p>
  Utiliza esta opción únicamente si ya revisaste la documentación y no encontraste solución.
  </p>
  <a href="https://github.com/LA-Referencia-Lyrasis-Project/tech-support/issues/new?template=migracion.yml" 
class="cta-button" target="_blank">
Crear Ticket de Migración
</a>
</div>
