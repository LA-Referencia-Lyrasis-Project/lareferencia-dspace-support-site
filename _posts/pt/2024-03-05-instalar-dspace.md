---
layout: post
title: "Instalando DSpace 8/9"
date: 2024-03-04 00:00:00 +0200
description: "Instalação do DSpace do zero"
language: pt
language_reference: instalar
home_order: 3
categories: post
published: true
permalink: /pt/instalar/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Requisitos, procedimento e configurações iniciais</p>

<!--more-->

<div class="note-container">
  <div class="note-header">
    <h4>Navegação</h4>
  </div>
  <div class="note-content">
    <ul>
      <li><a href="#documentacao">Documentação oficial</a></li>
      <li><a href="#etapas">Etapas de instalação</a></li>
      <li><a href="#problemas">Problemas frequentes</a></li>
      <li><a href="#suporte">Encaminhamento para suporte</a></li>
    </ul>
  </div>
</div>

---

<h2 class="custom-heading" id="documentacao">Documentação oficial</h2>

<p>
Antes de iniciar a instalação, revise a documentação técnica atualizada para DSpace 8/9.
</p>

<ul>
  <li><strong>Guia oficial de instalação</strong></li>
  <li><strong>Instalação com Docker (alternativa)</strong></li>
</ul>

---

<h2 class="custom-heading" id="etapas">Etapas de instalação</h2>

<p>
Identifique em que fase você está para acessar recursos específicos.
</p>

<div class="workflow-container">

  <div class="workflow-step">
    <div class="step-content">
      <h4>1. Preparação do ambiente</h4>
      <p>Instalação de dependências (Java, PostgreSQL, Solr, Node.js).</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>2. Configuração do banco de dados</h4>
      <p>Criação de usuário e banco de dados, configuração de permissões.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>3. Configuração do Solr</h4>
      <p>Criação de cores e validação.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>4. Instalação do Backend</h4>
      <p>Configuração de <code>local.cfg</code>, compilação e deploy da API REST.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>5. Instalação do Frontend</h4>
      <p>Configuração Angular, compilação e conexão com backend.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>6. Configuração de servidor web</h4>
      <p>Proxy reverso, HTTPS, firewall e ajustes de segurança.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>7. Validação final</h4>
      <p>Testes funcionais, criação de usuário administrador.</p>
    </div>
  </div>

</div>

---

<h2 class="custom-heading" id="problemas">Classificação do problema</h2>

<p>
Se você encontrar alguma dificuldade durante a instalação, identifique o tipo de situação:
</p>

<div class="service-components">

  <div class="service-item">
    <h4>Não compreendo o procedimento</h4>
    <p>Revise o guia oficial e o curso estruturado antes de escalar o caso.</p>
  </div>

  <div class="service-item">
    <h4>Estou vendo uma mensagem de erro</h4>
    <p>Verifique as versões instaladas, variáveis de ambiente e revise os logs do backend ou frontend.</p>
  </div>

  <div class="service-item">
    <h4>A instalação não avança</h4>
    <p>Se você já validou requisitos e documentação, pode se tratar de um bloqueio técnico específico.</p>
  </div>

</div>

---

<h2 class="custom-heading" id="suporte">Encaminhamento para suporte</h2>

<p>
Se você precisa criar um ticket, prepare previamente as seguintes informações:
</p>

<ul>
  <li>Versão do DSpace (8.x ou 9.x)</li>
  <li>Sistema operacional utilizado</li>
  <li>Etapa da instalação em que você está</li>
  <li>Descrição detalhada do problema</li>
  <li>Logs relevantes (backend, frontend ou Solr)</li>
</ul>

<div class="support-cta">
  <h3>Criar Ticket de Instalação</h3>
  <p>
  Use esta opção somente se você já revisou a documentação oficial e não encontrou solução.
  </p>
  <a href="{{ site.baseurl }}/pt/ticket?tipo=instalacion" class="cta-button">
    Criar Ticket
  </a>
</div>
