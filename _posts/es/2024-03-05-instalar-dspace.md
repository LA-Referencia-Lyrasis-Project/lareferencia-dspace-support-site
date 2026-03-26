---
layout: post
title: "Instalando DSpace 8/9"
date: 2024-03-04 00:00:00 +0200
description: "Instalación de DSpace desde cero"
language: es
language_reference: instalar
home_order: 3
categories: post
published: true
permalink: /es/instalar/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Requisitos, procedimiento y configuraciones iniciales</p>

<!--more-->

<div class="note-container">
  <div class="note-header">
    <h4>Navegación</h4>
  </div>
  <div class="note-content">
    <ul>
      <li><a href="#documentacion">Documentación oficial</a></li>
      <li><a href="#etapas">Etapas de instalación</a></li>
      <li><a href="#problemas">Problemas frecuentes</a></li>
      <li><a href="#soporte">Derivación a soporte</a></li>
    </ul>
  </div>
</div>

---

<h2 class="custom-heading" id="documentacion">Documentación oficial</h2>

<p>
Antes de iniciar la instalación, revisa la documentación técnica actualizada para DSpace 8/9.
</p>

<ul>
  <li><strong><a href="https://wiki.lyrasis.org/pages/viewpage.action?pageId=394527100">Guía oficial de instalación DSpace 8</strong></a></li>
  <li><strong><a href="https://wiki.lyrasis.org/pages/viewpage.action?pageId=414712011">Guía oficial de instalación DSpace 9</strong></a></li>
  <li><strong>Instalación con Docker (alternativa)</strong></li>
</ul>

---

<h2 class="custom-heading" id="etapas">Etapas de instalación</h2>

<p>
Identifica en qué fase te encuentras para acceder a recursos específicos.
</p>

<div class="workflow-container">

  <div class="workflow-step">
    <div class="step-content">
      <h4>1. Preparación del entorno</h4>
      <p>Instalación de dependencias (Java, PostgreSQL, Solr, Node.js).</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>2. Configuración de base de datos</h4>
      <p>Creación de usuario y base de datos, configuración de permisos.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>3. Configuración de Solr</h4>
      <p>Creación de cores y validación.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>4. Instalación del Backend</h4>
      <p>Configuración de <code>local.cfg</code>, compilación y despliegue de la API REST.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>5. Instalación del Frontend</h4>
      <p>Configuración Angular, compilación y conexión con backend.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>6. Configuración de servidor web</h4>
      <p>Proxy reverso, HTTPS, firewall y ajustes de seguridad.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>7. Validación final</h4>
      <p>Pruebas funcionales, creación de usuario administrador.</p>
    </div>
  </div>

</div>

---

<h2 class="custom-heading" id="problemas">Clasificación del problema</h2>

<p>
Si encuentras una dificultad durante la instalación de DSpace, identifica primero la situación:
</p>

<div class="service-components">

  <div class="service-item">
    <h4>No estoy seguro de cómo ejecutar un paso</h4>
    <p>
    Revisa nuevamente la guía oficial de instalación y el curso estructurado antes de abrir un ticket.
    Muchos problemas de instalación se resuelven revisando los pasos completos del procedimiento.
    </p>
  </div>

  <div class="service-item">
    <h4>Estoy viendo un mensaje de error</h4>
    <p>
    Verifica las versiones instaladas (Java, Maven, Node, PostgreSQL, Solr) y revisa los logs del backend o frontend.
    Muchos errores de instalación están relacionados con dependencias o variables de entorno.
    </p>
  </div>

  <div class="service-item">
    <h4>La instalación se encuentra bloqueada</h4>
    <p>
    Si ya verificaste los requisitos del entorno y revisaste la documentación oficial, puede tratarse de un problema técnico específico de configuración o despliegue.
    En ese caso puedes crear un ticket de soporte.
    </p>
  </div>

</div>

---

<h2 class="custom-heading" id="soporte">Derivación a soporte</h2>

<p>
Si necesitas crear un ticket, prepara previamente la siguiente información:
</p>

<ul>
  <li>Versión de DSpace (8.x o 9.x)</li>
  <li>Sistema operativo utilizado</li>
  <li>Etapa de instalación en la que te encuentras</li>
  <li>Descripción detallada del problema</li>
  <li>Logs relevantes (backend, frontend o Solr)</li>
</ul>

<p style="margin-top:15px; font-size:0.95em; color:#555;">
⚠️ Para crear un ticket necesitas una cuenta en GitHub. 
<a href="https://github.com/signup" target="_blank">Crear cuenta</a>
</p>

<div class="support-cta">
  <h3>Solicitar soporte de instalación</h3>
  <p>
  Utiliza esta opción únicamente si ya revisaste la documentación oficial y no encontraste solución.
  </p>
  <a href="https://github.com/LA-Referencia-Lyrasis-Project/tech-support/issues/new?template=instalacion.yml" 
class="cta-button" target="_blank">
Crear Ticket de Instalación
</a>
</div>