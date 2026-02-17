---
layout: post
title: "I have an installation and need support"
date: 2024-03-06 00:00:00 +0200
description: "Support for operational DSpace installations"
language: en
language_reference: soporte-tecnico
home_order: 4
categories: post
published: true
permalink: /en/soporte-tecnico/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Esta sección está orientada a instituciones con instalaciones DSpace operativas que necesitan asistencia técnica.</p>

Diagnóstico de problemas, FAQ por componente y derivación a soporte técnico especializado para instalaciones en producción.

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
      <li><a href="#faq">Preguntas Frecuentes por Componente</a></li>
      <li><a href="#evaluacion">Autoevaluación</a></li>
      <li><a href="#soporte">Derivación a Soporte</a></li>
    </ul>
  </div>
</div>

---

<h2 class="custom-heading" id="documentacion">Documentación</h2>

<h3 class="custom-heading-secondary">Checklist Antes de Reportar un Problema</h3>

<div class="architecture-details">
  <div class="detail-box">
    <h4>1. Recopilar Información Básica</h4>
    <p>Versión de DSpace, sistema operativo, versiones de Java/PostgreSQL/Solr, descripción clara del problema.</p>
  </div>

  <div class="detail-box">
    <h4>2. Obtener Logs Relevantes</h4>
    <p><strong>Backend:</strong> <code>[dspace]/log/dspace.log</code><br>
    <strong>Tomcat:</strong> <code>catalina.out</code><br>
    <strong>Solr:</strong> <code>solr/server/logs/solr.log</code><br>
    <strong>PostgreSQL:</strong> logs de BD si hay errores de conexión</p>
  </div>

  <div class="detail-box">
    <h4>3. Diagnóstico Básico</h4>
    <p>Verifica que todos los servicios estén corriendo (PostgreSQL, Solr, Tomcat). Revisa conectividad de red, permisos de archivos, espacio en disco.</p>
  </div>

  <div class="detail-box">
    <h4>4. Reproducir el Problema</h4>
    <p>Documenta los pasos exactos para reproducir el error. Incluye capturas de pantalla si es un problema visual.</p>
  </div>
</div>

<h3 class="custom-heading-secondary">Componentes Críticos</h3>

<ul>
  <li><strong>Base de Datos (PostgreSQL):</strong> Almacena metadatos, usuarios, configuración</li>
  <li><strong>Solr:</strong> Motor de búsqueda e indexación</li>
  <li><strong>Backend (API REST):</strong> Lógica de negocio, workflows, autenticación</li>
  <li><strong>Frontend (Angular):</strong> Interfaz de usuario</li>
  <li><strong>OAI-PMH:</strong> Protocolo de cosecha de metadatos</li>
</ul>

---

<h2 class="custom-heading" id="faq">Preguntas Frecuentes por Componente</h2>

<div class="service-components">
  <div class="service-item">
    <h4>Base de Datos</h4>
    <p><strong>Conexión rechazada:</strong> Verifica <code>pg_hba.conf</code> y credenciales en <code>local.cfg</code>.<br>
    <strong>BD lenta:</strong> Considera vacuum, reindex, análisis de queries lentas.</p>
  </div>

  <div class="service-item">
    <h4>Solr</h4>
    <p><strong>Búsqueda no funciona:</strong> Verifica que Solr esté corriendo, reindexar con <code>index-discovery</code>.<br>
    <strong>Resultados desactualizados:</strong> Ejecuta reindexación completa.</p>
  </div>

  <div class="service-item">
    <h4>Angular Frontend</h4>
    <p><strong>Página en blanco:</strong> Revisa consola del navegador, verifica URL del backend en config.<br>
    <strong>Errores 404:</strong> Verifica configuración del servidor web y rutas de Angular.</p>
  </div>

  <div class="service-item">
    <h4>OAI-PMH</h4>
    <p><strong>Endpoint no responde:</strong> Verifica que el servicio OAI esté habilitado en configuración.<br>
    <strong>Metadatos incompletos:</strong> Revisa mapeos de metadatos en <code>crosswalks</code>.</p>
  </div>

  <div class="service-item">
    <h4>Rendimiento</h4>
    <p><strong>Sitio lento:</strong> Revisa uso de CPU/RAM, optimiza queries de BD, considera caché.<br>
    <strong>Timeouts:</strong> Aumenta timeouts en Tomcat y servidor web.</p>
  </div>

  <div class="service-item">
    <h4>Integraciones</h4>
    <p><strong>LDAP/Shibboleth:</strong> Verifica configuración de autenticación, logs de autenticación.<br>
    <strong>Handle Server:</strong> Confirma que el servicio Handle esté corriendo y accesible.</p>
  </div>
</div>

---

<h2 class="custom-heading" id="evaluacion">Autoevaluación</h2>

<p>Clasifica tu situación para ayudarnos a priorizar tu ticket:</p>

<div class="workflow-container">
  <div class="workflow-step">
    <div class="step-content">
      <h4>Duda leve</h4>
      <p>Pregunta sobre configuración, uso de funcionalidad, o consulta general que no afecta operación.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Error funcional</h4>
      <p>Una funcionalidad específica no trabaja correctamente pero el servicio general está operativo.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Servicio caído</h4>
      <p>El repositorio está completamente inaccesible o un componente crítico no funciona.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Problema crítico</h4>
      <p>Pérdida de datos, corrupción de BD, o situación que requiere atención inmediata.</p>
    </div>
  </div>
</div>

---

<h2 class="custom-heading" id="soporte">Derivación a Soporte</h2>

<p>Si después de revisar la documentación y FAQ necesitas asistencia técnica, puedes crear un ticket de tipo <strong>"Incidente"</strong>.</p>

<div class="note-container">
  <div class="note-header">
    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
      <circle cx="12" cy="12" r="10"></circle>
      <line x1="12" y1="8" x2="12" y2="12"></line>
      <line x1="12" y1="16" x2="12.01" y2="16"></line>
    </svg>
    <h4>Importante</h4>
  </div>
  <div class="note-content">
    <p>Al crear el ticket, incluye: versión de DSpace, descripción del problema, pasos para reproducir, logs relevantes, y nivel de urgencia.</p>
  </div>
</div>

<div class="support-cta">
  <h3>¿Necesitas soporte técnico?</h3>
  <p>Nuestro equipo puede asistirte con diagnóstico de problemas, resolución de incidentes y optimización de tu instalación.</p>
  <a href="{{ site.baseurl }}/en/ticket" class="cta-button">Crear Ticket de Incidente</a>
</div>
