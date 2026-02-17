---
layout: post
title: "I want to install DSpace from scratch"
date: 2024-03-04 00:00:00 +0200
description: "Install DSpace from scratch"
language: en
language_reference: instalar
home_order: 3
categories: post
published: true
permalink: /en/instalar/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Esta sección está orientada a instituciones que van a implementar DSpace por primera vez.</p>

Requisitos técnicos, arquitectura recomendada e instalación completa de backend, frontend y Solr para nuevas implementaciones.

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
      <li><a href="#instalacion">Instalación Paso a Paso</a></li>
      <li><a href="#faq">Preguntas Frecuentes</a></li>
      <li><a href="#evaluacion">Autoevaluación</a></li>
      <li><a href="#soporte">Derivación a Soporte</a></li>
    </ul>
  </div>
</div>

---

<h2 class="custom-heading" id="documentacion">Documentación</h2>

<h3 class="custom-heading-secondary">Requisitos Técnicos</h3>

<div class="architecture-details">
  <div class="detail-box">
    <h4>Sistema Operativo</h4>
    <p>Linux (Ubuntu 20.04/22.04, CentOS/RHEL 8+). DSpace también funciona en Windows y macOS para desarrollo, pero Linux es recomendado para producción.</p>
  </div>

  <div class="detail-box">
    <h4>Software Base</h4>
    <p><strong>Java:</strong> OpenJDK 17 o 21<br>
    <strong>PostgreSQL:</strong> 12+ (recomendado 13+)<br>
    <strong>Apache Solr:</strong> 9.x<br>
    <strong>Node.js:</strong> 18.x LTS<br>
    <strong>Apache Ant:</strong> 1.10+<br>
    <strong>Maven:</strong> 3.6+</p>
  </div>

  <div class="detail-box">
    <h4>Recursos Mínimos</h4>
    <p><strong>RAM:</strong> 4 GB (8+ GB recomendado)<br>
    <strong>CPU:</strong> 2 cores (4+ recomendado)<br>
    <strong>Almacenamiento:</strong> 50 GB base + espacio para colección</p>
  </div>

  <div class="detail-box">
    <h4>Arquitectura Recomendada</h4>
    <p>Para producción: servidor web reverso (Nginx/Apache), certificado SSL, firewall configurado, backups automatizados.</p>
  </div>
</div>

---

<h2 class="custom-heading" id="instalacion">Instalación Paso a Paso</h2>

<div class="workflow-container">
  <div class="workflow-step">
    <div class="step-content">
      <h4>1. Preparar el Entorno</h4>
      <p>Instala Java, PostgreSQL, Solr, Node.js, Maven y Ant. Crea usuario del sistema para DSpace (ej: <code>dspace</code>).</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>2. Configurar PostgreSQL</h4>
      <p>Crea base de datos y usuario para DSpace. Configura permisos y ajusta <code>pg_hba.conf</code> para permitir conexiones locales.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>3. Instalar Backend</h4>
      <p>Descarga código fuente, configura <code>local.cfg</code>, compila con Maven (<code>mvn package</code>), instala con Ant (<code>ant fresh_install</code>).</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>4. Configurar Solr</h4>
      <p>Copia configuración de Solr desde DSpace, crea cores necesarios, inicia Solr y verifica que esté accesible.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>5. Instalar Frontend</h4>
      <p>Clona repositorio Angular, configura <code>environment.prod.ts</code> con URL del backend, instala dependencias (<code>npm install</code>), compila (<code>npm run build:prod</code>).</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>6. Configurar Servidor Web</h4>
      <p>Configura Nginx o Apache como proxy reverso para backend y para servir frontend. Habilita HTTPS con certificado SSL.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>7. Validación</h4>
      <p>Accede a la interfaz, crea usuario administrador, verifica búsqueda, prueba depósito de ítem de prueba, confirma OAI-PMH.</p>
    </div>
  </div>
</div>

---

<h2 class="custom-heading" id="faq">Preguntas Frecuentes</h2>

<div class="service-components">
  <div class="service-item">
    <h4>Errores de Java</h4>
    <p><strong>JAVA_HOME no configurado:</strong> Exporta variable de entorno apuntando a tu JDK.<br>
    <strong>OutOfMemoryError:</strong> Aumenta heap de JVM en configuración de Tomcat/servicio.</p>
  </div>

  <div class="service-item">
    <h4>Problemas con Angular</h4>
    <p><strong>npm install falla:</strong> Verifica versión de Node.js (debe ser 18.x LTS).<br>
    <strong>Build falla:</strong> Revisa logs de compilación, puede ser error de dependencias o configuración.</p>
  </div>

  <div class="service-item">
    <h4>Solr no arranca</h4>
    <p>Verifica que el puerto no esté en uso, revisa logs en <code>solr/server/logs</code>, confirma permisos de archivos.</p>
  </div>

  <div class="service-item">
    <h4>Configuración incorrecta</h4>
    <p>Errores comunes: URL de base de datos mal formada, rutas de directorios incorrectas, permisos de archivos insuficientes.</p>
  </div>
</div>

---

<h2 class="custom-heading" id="evaluacion">Autoevaluación</h2>

<p>Antes de solicitar soporte, evalúa tu situación:</p>

<div class="workflow-container">
  <div class="workflow-step">
    <div class="step-content">
      <h4>No tengo experiencia técnica suficiente</h4>
      <p>Si no tienes experiencia con Java, Linux o administración de sistemas y necesitas acompañamiento completo.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Tengo error en instalación</h4>
      <p>Si encontraste un error específico durante la instalación y necesitas ayuda para resolverlo.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Necesito validación de arquitectura</h4>
      <p>Si quieres que revisemos tu arquitectura propuesta antes de proceder con la instalación.</p>
    </div>
  </div>
</div>

---

<h2 class="custom-heading" id="soporte">Derivación a Soporte</h2>

<p>Si después de revisar la documentación y FAQ necesitas asistencia con tu instalación, puedes crear un ticket de tipo <strong>"Instalación"</strong>.</p>

<div class="support-cta">
  <h3>¿Necesitas ayuda con tu instalación?</h3>
  <p>Nuestro equipo puede asistirte con la instalación completa, resolución de errores y validación de arquitectura.</p>
  <a href="{{ site.baseurl }}/en/ticket" class="cta-button">Crear Ticket de Instalación</a>
</div>
