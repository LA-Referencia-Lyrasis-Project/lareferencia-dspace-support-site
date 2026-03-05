---
layout: post
title: "Migrando para o DSpace 8/9"
date: 2024-03-02 00:00:00 +0200
description: "Atualização e migração de instalações DSpace"
language: pt
language_reference: migrar
home_order: 2
categories: post
published: true
permalink: /pt/migrar/
excerpt_separator: <!--more-->
---

<p class="lead-highlight">Guias técnicos e experiências para passar do DSpace 5/6 para 8/9.</p>

<!--more-->

<div class="note-container">
  <div class="note-header">
    <h4>Navegação</h4>
  </div>
  <div class="note-content">
    <ul>
      <li><a href="#documentacao">Documentação de migração</a></li>
      <li><a href="#etapas">Etapas do processo</a></li>
      <li><a href="#problemas">Problemas frequentes</a></li>
      <li><a href="#suporte">Encaminhamento para suporte</a></li>
    </ul>
  </div>
</div>

---

<h2 class="custom-heading" id="documentacao">Documentação de migração</h2>

<p>
Antes de iniciar qualquer procedimento técnico, revise a documentação oficial e os guias específicos de migração.
</p>

<ul>
  <li><strong>Guia oficial de migração DSpace 5/6 → 8/9</strong></li>
  <li><strong>Scripts e ferramentas recomendadas</strong></li>
  <li><strong>Requisitos de infraestrutura atualizados</strong></li>
</ul>

<p>
Recomenda-se não iniciar a instalação sem ter revisado previamente esses guias.
</p>

---

<h2 class="custom-heading" id="etapas">Etapas do processo de migração</h2>

<p>
Identifique em que etapa você está para acessar recursos específicos.
</p>

<div class="workflow-container">

  <div class="workflow-step">
    <div class="step-content">
      <h4>1. Planejamento</h4>
      <p>Avaliação de infraestrutura, análise de personalizações existentes e definição da estratégia de migração.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>2. Instalação do Backend</h4>
      <p>Configuração de ambiente, deploy da API REST, conexão com banco de dados e Solr.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>3. Instalação do Frontend</h4>
      <p>Deploy Angular, configuração de ambiente e conexão com backend.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>4. Migração de dados</h4>
      <p>Conversão e validação do banco de dados, indexação e testes funcionais.</p>
    </div>
  </div>

  <div class="workflow-step">
    <div class="step-content">
      <h4>5. Personalizações</h4>
      <p>Adaptação de temas, configurações avançadas e ajustes específicos da instituição.</p>
    </div>
  </div>

</div>

---

<h2 class="custom-heading" id="problemas">Classificação do problema</h2>

<p>
Antes de criar um ticket, identifique o tipo de dificuldade que você está enfrentando:
</p>

<div class="service-components">

  <div class="service-item">
    <h4>Não compreendo o processo</h4>
    <p>Revise novamente o guia oficial e o curso estruturado antes de escalar o caso.</p>
  </div>

  <div class="service-item">
    <h4>Estou vendo uma mensagem de erro</h4>
    <p>Consulte a seção de problemas comuns e verifique os logs do backend e frontend.</p>
  </div>

  <div class="service-item">
    <h4>Tenho um bloqueio técnico que impede avançar</h4>
    <p>Se você já revisou documentação e erros semelhantes, pode solicitar suporte especializado.</p>
  </div>

</div>

---

<h2 class="custom-heading" id="suporte">Encaminhamento para suporte</h2>

<p>
Se você precisa criar um ticket, prepare previamente as seguintes informações:
</p>

<ul>
  <li>Versão de origem (5.x ou 6.x)</li>
  <li>Versão de destino (8.x ou 9.x)</li>
  <li>Etapa do processo em que você está</li>
  <li>Descrição clara do problema</li>
  <li>Logs relevantes (backend e/ou frontend)</li>
</ul>

<div class="support-cta">
  <h3>Criar Ticket de Migração</h3>
  <p>
  Use esta opção somente se você já revisou a documentação e não encontrou solução.
  </p>
  <a href="https://github.com/memoemg/soporte-dspace-latam/issues/new?template=migracion.yml" 
class="cta-button" target="_blank">
Criar Ticket de Migração
</a>
</div>
