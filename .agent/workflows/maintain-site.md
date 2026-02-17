---
description: Mantener y validar el sitio Jekyll multilingüe
---

Este workflow utiliza el skill `maintain-jekyll-multilang-template` para realizar cambios de contenido, diseño o estructura asegurando la paridad entre idiomas.

### Pasos

1. **Revisar estado actual**:
   - Verificar archivos clave: `_config.yml`, `_data/theme.yml`, `assets/main.scss`.
2. **Aplicar cambios**:
   - Editar archivos en `_pages/(en|es|pt)/`.
   - Mantener el `language_reference` idéntico para páginas equivalentes.
   - Respetar el `order` y `home_order`.
3. **Validar construcción**:
   // turbo
   - Ejecutar el build de producción para validar:
     ```bash
     docker run --rm -v "$PWD:/app" -w /app ruby:3.3 bash -lc 'gem install bundler -v 2.3.26 --no-document >/dev/null && bundle _2.3.26_ install && bundle _2.3.26_ exec jekyll build --config _config.yml,_config_github.yml'
     ```
4. **Verificar Paridad**:
   - Confirmar que cada página ES tiene su equivalente EN y PT.
