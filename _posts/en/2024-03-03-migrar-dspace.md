---
layout: post
title: "I want to upgrade or migrate an installation"
date: 2024-03-02 00:00:00 +0200
description: "Upgrade and migration of DSpace installations"
language: en
language_reference: migrar
home_order: 2
categories: post
published: true
permalink: /en/migrar/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Esta sección está orientada a instituciones que necesitan migrar entre versiones de DSpace o actualizar una instalación existente.</p>

Guías paso a paso para migrar entre versiones, con checklists previas, FAQ de errores comunes y mejores prácticas regionales.

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

<h3 class="custom-heading-secondary">Checklist Previa a la Migración</h3>

<div class="architecture-details">
  <div class="detail-box">
    <h4>1. Backup Completo</h4>
    <p>Respalda base de datos PostgreSQL, directorio assetstore, configuraciones locales y personalizaciones de código.</p>
  </div>

  <div class="detail-box">
    <h4>2. Verificar Requisitos</h4>
    <p>Confirma que el servidor cumple los requisitos de la nueva versión: Java, Node.js, PostgreSQL, Solr.</p>
  </div>

  <div class="detail-box">
    <h4>3. Revisar Notas de Versión</h4>
    <p>Lee las release notes oficiales para identificar cambios importantes, deprecaciones y nuevas funcionalidades.</p>
  </div>

  <div class="detail-box">
    <h4>4. Planificar Downtime</h4>
    <p>Estima el tiempo de inactividad necesario y comunica a los usuarios con anticipación.</p>
  </div>
</div>

<h3 class="custom-heading-secondary">Proceso de Migración</h3>

<div class="workflow-container">
  <div class="workflow-step">
    <div class="step-content">
      <h4>Migración de Base de Datos</h4>
      <p>Ejecuta los scripts de migración de esquema incluidos en la nueva versión. Verifica que no haya errores en los logs.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Actualización Backend</h4>
      <p>Compila el nuevo backend con Maven, actualiza configuraciones en <code>local.cfg</code> y <code>dspace.cfg</code>.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Actualización Frontend</h4>
      <p>Instala dependencias con npm, ajusta configuraciones en <code>environment.*.ts</code> y compila para producción.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Reindexación Solr</h4>
      <p>Ejecuta <code>dspace index-discovery -b</code> para reindexar todo el contenido con el nuevo esquema de Solr.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Validación Final</h4>
      <p>Verifica funcionalidades críticas: búsqueda, navegación, depósito de ítems, OAI-PMH, autenticación.</p>
    </div>
  </div>
</div>

---

<h2 class="custom-heading" id="faq">Preguntas Frecuentes</h2>

<div class="service-components">
  <div class="service-item">
    <h4>Errores frecuentes en migraciones</h4>
    <p><strong>Error de esquema de BD:</strong> Verifica que ejecutaste todos los scripts de migración en orden.<br>
    <strong>Permisos de archivos:</strong> Asegúrate de que el usuario de DSpace tiene permisos sobre assetstore.</p>
  </div>

  <div class="service-item">
    <h4>Problemas con Angular</h4>
    <p>Si el frontend no arranca, verifica versiones de Node.js y npm. Limpia caché con <code>npm cache clean --force</code> y reinstala dependencias.</p>
  </div>

  <div class="service-item">
    <h4>Problemas con Solr</h4>
    <p>Si la búsqueda no funciona tras migrar, verifica que Solr esté usando el esquema correcto y reindexar completamente.</p>
  </div>

  <div class="service-item">
    <h4>Personalizaciones rotas</h4>
    <p>Las personalizaciones de código pueden romperse entre versiones. Revisa cambios en la API y adapta tu código personalizado.</p>
  </div>
</div>

---

<h2 class="custom-heading" id="evaluacion">Autoevaluación</h2>

<p>Antes de solicitar soporte, evalúa tu situación:</p>

<div class="workflow-container">
  <div class="workflow-step">
    <div class="step-content">
      <h4>Tengo un error puntual</h4>
      <p>Si encontraste un error específico durante la migración y necesitas ayuda para diagnosticarlo.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>La migración falló</h4>
      <p>Si la migración no se completó exitosamente y necesitas asistencia para recuperar el servicio.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Necesito acompañamiento completo</h4>
      <p>Si prefieres que el equipo de soporte te acompañe durante todo el proceso de migración.</p>
    </div>
  </div>
</div>

---

<h2 class="custom-heading" id="soporte">Derivación a Soporte</h2>

<p>Si después de revisar la documentación y FAQ necesitas asistencia con tu migración, puedes crear un ticket de tipo <strong>"Migración"</strong>.</p>

<div class="support-cta">
  <h3>¿Necesitas ayuda con tu migración?</h3>
  <p>Nuestro equipo puede asistirte con diagnóstico de errores, planificación de migración y acompañamiento técnico durante el proceso.</p>
  <a href="{{ site.baseurl }}/en/ticket" class="cta-button">Crear Ticket de Migración</a>
</div>
