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
  <li><strong>Guía oficial de migración DSpace 5/6 → 8/9</strong></li>
  <li><strong>Scripts y herramientas recomendadas</strong></li>
  <li><strong>Requisitos de infraestructura actualizados</strong></li>
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
Antes de crear un ticket, identifica el tipo de dificultad que estás experimentando:
</p>

<div class="service-components">

  <div class="service-item">
    <h4>No comprendo el proceso</h4>
    <p>Revisa nuevamente la guía oficial y el curso estructurado antes de escalar el caso.</p>
  </div>

  <div class="service-item">
    <h4>Estoy viendo un mensaje de error</h4>
    <p>Consulta la sección de problemas comunes y verifica los logs del backend y frontend.</p>
  </div>

  <div class="service-item">
    <h4>Tengo un bloqueo técnico que impide avanzar</h4>
    <p>Si ya revisaste documentación y errores similares, puedes solicitar soporte especializado.</p>
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

<!--div class="ticket-builder">

  <h3>Clasifica tu caso antes de crear el ticket</h3>

  <div style="margin-bottom:15px;">
    <label for="etapa"><strong>Etapa de la migración:</strong></label><br>
    <select id="etapa" class="form-control">
      <option value="Planificación">Planificación</option>
      <option value="Instalación backend">Instalación backend</option>
      <option value="Instalación frontend">Instalación frontend</option>
      <option value="Migración de datos">Migración de datos</option>
      <option value="Personalizaciones">Personalizaciones</option>
    </select>
  </div>

  <div style="margin-bottom:20px;">
    <label for="naturaleza"><strong>Naturaleza del problema:</strong></label><br>
    <select id="naturaleza" class="form-control">
      <option value="Error técnico">Error técnico</option>
      <option value="Duda sobre el proceso">Duda sobre el proceso</option>
    </select>
  </div>

  <button class="cta-button" onclick="crearTicketMigracion()">
    Crear Ticket en GitHub
  </button>

</div>

<script>
function crearTicketMigracion() {

  const etapa = document.getElementById("etapa").value;
  const naturaleza = document.getElementById("naturaleza").value;

  const titulo = `[Migración][${etapa}][${naturaleza}] `;
  
  const cuerpo =
`## Información inicial

**Etapa:** ${etapa}
**Naturaleza:** ${naturaleza}

---

Describe aquí el problema con el mayor detalle posible.

Incluye:
- Comandos ejecutados
- Mensajes de error
- Fragmentos relevantes de logs
`;

  const url = "https://github.com/TU-USUARIO/TU-REPO/issues/new"
    + "?template=migracion.yml"
    + "&title=" + encodeURIComponent(titulo)
    + "&body=" + encodeURIComponent(cuerpo);

  window.location.href = url;
}
</script-->

<div class="support-cta">
  <h3>Crear Ticket de Migración</h3>
  <p>
  Utiliza esta opción únicamente si ya revisaste la documentación y no encontraste solución.
  </p>
  <a href="{{ site.baseurl }}/es/ticket?tipo=migracion" class="cta-button">
    Crear Ticket
  </a>
</div>
