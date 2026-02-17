# Especificación funcional

## Sitio de soporte DSpace

### Programa LA Referencia – Lyrasis

---

# 1. Contexto general

Este sitio forma parte del programa de soporte técnico en DSpace desarrollado en el marco de la colaboración entre:

* LA Referencia (infraestructura regional de ciencia abierta en América Latina y España).
* Lyrasis (organización vinculada al ecosistema DSpace).

El sitio no debe concebirse como un simple centro de ayuda ni como un blog técnico.
Su propósito es funcionar como:

* Portal de orientación estructurada.
* Sistema de derivación inteligente hacia soporte.
* Repositorio de buenas prácticas regionales.
* Mecanismo de reducción de tickets innecesarios.
* Infraestructura de acompañamiento técnico federado.

El sitio será generado sobre un template existente. El agente que lo construya debe respetar el layout, estilos y convenciones del template base.

---

# 2. Principio conceptual del sitio

El diseño del sitio se basa en un flujo normalizado de soporte.

Cada una de las cuatro secciones principales debe seguir exactamente la misma lógica:

1. Documentación primero.
2. Preguntas frecuentes o experiencias similares.
3. Autoevaluación del usuario.
4. Derivación a soporte.

El objetivo es que el usuario:

* Primero intente resolver su situación con información estructurada.
* Luego revise problemas frecuentes.
* Después evalúe si realmente necesita soporte.
* Finalmente, solo si corresponde, cree un ticket.

El sitio funciona como un embudo de soporte inteligente.

---

# 3. Arquitectura del sitio

## 3.1 Estructura general

El sitio debe estar compuesto por:

* Una instro breve en home y un primera page que aparece a continuación explica el contexto
* Cuatro pages principales asociadas a las cuatro opciones estratégicas, tienen un parte de intro que explica el contexto e invita al usuario a clickear en mas para acceder a la opción completa. 
* Una página separada para la creación de tickets (placeholder en esta etapa).

La arquitectura debe ser plana, clara y sin jerarquías profundas.

---

## 3.2 Página principal (Home)

La Home es el punto de entrada y sistema de derivación inicial.

Debe contener:

1. Encabezado institucional breve.
2. Explicación clara del propósito del sitio (page que aparece primero)
3. Cuatro bloques principales de acción (cada uno es un page con ver mas, en el intro solo presenta la opción)


La Home no debe contener documentación técnica extensa.
Su función es orientar y derivar.

---

## 3.3 Las cuatro secciones principales

El sitio debe contener exactamente cuatro áreas principales:

1. Quiero conocer más sobre DSpace.
2. Quiero actualizar o migrar una instalación existente.
3. Quiero instalar una versión actual DSpace desde cero.
4. Tengo una instalación de DSpace y necesito soporte técnico.

Cada una debe tener su propia página independiente.

Cada página debe ser:

* Una página larga con apenas una intro que se ven en la home
* De lectura lineal.
* Con navegación interna mediante anchors.
* Con estructura idéntica a las demás.

No deben existir subpáginas adicionales para estas áreas.
Todo el flujo vive dentro de cada página.

---

## 3.4 Estructura interna obligatoria de cada página

Cada página debe contener, en este orden:

1. Encabezado común que incluye la pregunta principal y el enlace al ver mas
2. Introducción contextual.
3. Navegación interna (índice con enlaces).
4. Sección de Documentación.
5. Sección de FAQ o experiencias similares.
6. Sección de Autoevaluación.
7. Sección de Derivación a soporte.

Esta estructura debe repetirse sin modificaciones en las cuatro secciones.

---

## 3.5 Uso de navegación interna

Cada página debe incluir:

* Índice interno al inicio.
* Enlaces que permitan saltar a cada sección.
* Anchors definidos para cada bloque.

La navegación debe permitir:

* Lectura completa de arriba hacia abajo.
* Salto directo a cualquier sección.
* Flujo continuo en una sola página.

Anchors obligatorios:

* documentacion
* faq
* evaluacion
* soporte

En el caso de instalación, puede añadirse:

* instalacion

---

## 3.6 Página de creación de ticket

La creación de tickets debe estar separada estructuralmente.

Las páginas principales solo deben:

* Explicar cuándo corresponde crear un ticket.
* Enlazar a la página o sistema externo correspondiente.

No se debe generar el formulario en esta etapa.

---

# 4. Contenido detallado por sección

---

## 4.1  Quiero conocer más sobre DSpace.

### Introducción

Orientado a instituciones que están explorando DSpace o evaluando su implementación.

---

### Documentación

Debe incluir:

* Qué es DSpace.
* Arquitectura general.
* Componentes principales.
* Versiones actuales.
* Requisitos técnicos.
* Recursos oficiales.
* Buenas prácticas regionales.

---

### FAQ / Experiencias

* Qué versión elegir.
* Docker vs instalación tradicional.
* Infraestructura mínima realista.
* Casos comunes en la región.

---

### Autoevaluación

Opciones como:

* Necesito orientación arquitectónica.
* No tengo equipo técnico interno.
* Estoy planificando una implementación.

---

### Derivación

Enlace hacia sistema de ticket con tipo “orientación”.

---

## 4.2 Actualizar o migrar

### Introducción

Orientado a instituciones que migran entre versiones

---

### Documentación

* Migraciones por versión.
* Checklist previa.
* Requisitos.
* Backups.
* Instalación backend.
* Instalación frontend.
* Migración de base de datos.
* Reindexación Solr.
* Validación final.

---

### FAQ

* Errores frecuentes en migraciones.
* Problemas Angular.
* Problemas Solr.
* Cambios de configuración.
* Problemas comunes en personalizaciones.

---

### Autoevaluación

* Tengo un error puntual.
* La migración falló.
* Necesito acompañamiento completo.

---

### Derivación

Enlace a ticket tipo “migración”.

---

## 4.3 Instalar DSpace desde cero

### Introducción

Orientado a nuevas implementaciones.

---

### Documentación

* Requisitos técnicos.
* Arquitectura recomendada.
* Seguridad.
* Infraestructura de producción.
* Checklist previa.

---

### Instalación paso a paso

* Backend.
* Frontend.
* Configuración.
* Solr.
* Validación.

---

### FAQ

* Errores Java.
* Problemas Angular.
* Solr no arranca.
* Configuración incorrecta.

---

### Autoevaluación

* No tengo experiencia técnica suficiente.
* Tengo error en instalación.
* Necesito validación de arquitectura.

---

### Derivación

Enlace a ticket tipo “instalación”.

---

## 4.4 Soporte técnico

### Introducción

Orientado a instalaciones ya operativas.

---

### Documentación

* Cómo obtener logs.
* Diagnóstico básico.
* Checklist antes de reportar.
* Componentes críticos.

---

### FAQ por componente

* Base de datos.
* Solr.
* Angular.
* OAI.
* Rendimiento.
* Integraciones.

---

### Autoevaluación

* Duda leve.
* Error funcional.
* Servicio caído.
* Problema crítico.

---

### Derivación

Enlace a ticket tipo “incidente”.

---

# 5. Principios de diseño que deben respetarse

El agente generador debe cumplir:

* No duplicar información innecesariamente.
* Mantener tono técnico-profesional.
* Usar estructura repetible.
* No fragmentar en múltiples subpáginas.
* No generar formularios.
* No alterar el orden estructural.
* Permitir lectura lineal completa.
* Permitir navegación por anchors.
* Mantener coherencia institucional LA Referencia – Lyrasis.

---

# 6. Qué no debe hacer el agente

* No generar backend de formularios.
* No inventar enlaces ficticios.
* No cambiar la estructura normalizada.
* No mezclar contenidos entre secciones.
* No simplificar el flujo en un único bloque genérico.

---

# 7. Resultado esperado

El resultado final debe ser:

* Un sitio claro y profesional.
* Con una Home orientada a decisiones.
* Cuatro páginas largas con flujo estructurado.
* Navegación interna funcional.
* Derivación clara hacia soporte.
* Totalmente compatible con publicación estática.
* Escalable y mantenible.

El sitio debe funcionar como una infraestructura de acompañamiento técnico estructurada, no como un simple centro de ayuda.

---

Si quieres, puedo ahora preparar:

* Una versión ejecutiva breve para presentar al equipo.
* Una versión aún más técnica pensada como prompt directo para un generador automático.
* O una versión que incluya criterios de gobernanza y métricas de uso del sistema de soporte.
