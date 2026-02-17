---
layout: post
title:  "Estrutura do Template"
date:   2024-02-01 00:00:00 +0200
description:  "Como este template está organizado"
language: pt
language_reference: template-structure
home_order: 2
categories: post
published: false
---

Este starter foi organizado para facilitar manutenção de conteúdo multilíngue e navegação.

<h2 class="custom-heading">Camadas de Conteúdo</h2>

<div class="service-components">
  <div class="service-item">
    <h4>Configuração</h4>
    <p>Valores globais, plugins, defaults de idioma e build ficam em <code>_config.yml</code> e <code>_config_github.yml</code>.</p>
  </div>

  <div class="service-item">
    <h4>Layouts e Includes</h4>
    <p>A estrutura visual reutilizável está em <code>_layouts</code> e <code>_includes</code>, mantendo páginas mais limpas.</p>
  </div>

  <div class="service-item">
    <h4>Páginas Localizadas</h4>
    <p>O conteúdo estático é agrupado por idioma em <code>_pages/en</code>, <code>_pages/es</code> e <code>_pages/pt</code>.</p>
  </div>

  <div class="service-item">
    <h4>Posts Localizados</h4>
    <p>Os posts também são separados por idioma em <code>_posts</code>, com <code>language_reference</code> ligando equivalentes.</p>
  </div>
</div>

<h2 class="custom-heading">Fluxo de Trabalho Sugerido</h2>

<div class="workflow-container">
  <div class="workflow-step">
    <div class="step-content">
      <h4>1. Configurar Metadados</h4>
      <p>Atualize nome do projeto, descrição, URLs e informações de contato.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>2. Substituir Conteúdo de Exemplo</h4>
      <p>Edite páginas e posts em cada idioma com o conteúdo real do seu projeto.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>3. Testar Localmente</h4>
      <p>Use Ruby local ou scripts Docker para validar layout, links e alternância de idioma.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>4. Publicar no GitHub Pages</h4>
      <p>Faça push para a branch principal e deixe o GitHub Actions publicar o site.</p>
    </div>
  </div>
</div>
