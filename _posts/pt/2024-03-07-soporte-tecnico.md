---
layout: post
title: "Problemas com DSpace"
date: 2024-03-06 00:00:00 +0200
description: "Suporte para instalações DSpace operacionais"
language: pt
language_reference: soporte-tecnico
home_order: 4
categories: post
published: true
permalink: /pt/soporte-tecnico/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Suporte para instalações DSpace 8/9 já operacionais. </p>

<!--more-->

<div class="note-container">
  <div class="note-header">
    <h4>Navegação</h4>
  </div>
  <div class="note-content">
    <ul>
      <li><a href="#clasificacion">Classificação por componente</a></li>
      <li><a href="#checklist">Checklist antes de reportar</a></li>
      <li><a href="#soporte">Encaminhamento para suporte</a></li>
    </ul>
  </div>
</div>

---

<h2 class="custom-heading" id="clasificacion">1. Qual componente apresenta o problema?</h2>

<p>
Identifique primeiro a área afetada. Isso permitirá classificar corretamente o incidente.
</p>

<div class="workflow-container">

  <div class="workflow-step">
    <div class="step-content">
      <h4>Banco de Dados (PostgreSQL)</h4>
      <p>Erros de conexão, lentidão extrema, problemas de integridade de dados.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Solr (Índice de busca)</h4>
      <p>A busca não retorna resultados, indexação incompleta ou erros em cores.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Backend (API REST)</h4>
      <p>Erros 500, problemas de autenticação</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>Frontend (Angular)</h4>
      <p>Erros no console do navegador, problemas visuais ou com personalizações.</p>
    </div>
  </div>

</div>

---

<h2 class="custom-heading" id="checklist">2. Checklist antes de reportar</h2>

<p>
Antes de criar o ticket, prepare as seguintes informações:
</p>

<ul>
  <li>Versão exata do DSpace (8.x / 9.x)</li>
  <li>Sistema operacional e ambiente</li>
  <li>Componente afetado</li>
  <li>Descrição clara do problema e passos para reproduzir</li>
  <li>Logs relevantes</li>
</ul>

<p style="margin-top:15px; font-size:0.95em; color:#555;">
⚠️ Para criar um ticket, você precisa de uma conta no GitHub.
<a href="https://github.com/signup" target="_blank">Criar conta</a>
</p>

---

<h2 class="custom-heading" id="soporte">Encaminhamento para suporte</h2>

<p>
Se você já realizou o diagnóstico básico e o problema persiste, pode escalar o incidente.
</p>

<div class="support-cta">
  <h3>Solicitar suporte técnico</h3>
  <p>
  O ticket será classificado por componente e severidade para priorização técnica.
  </p>
  <a href="https://github.com/LA-Referencia-Lyrasis-Project/tech-support/issues/new?template=soporte.yml" 
class="cta-button" target="_blank">
Reportar Incidente
</a>
</div>
