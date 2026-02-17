# Portal de Soporte Técnico DSpace

Sitio estático en Jekyll para el programa **LA Referencia - Lyrasis**, con soporte multilenguaje (`es`, `en`, `pt`).

## Estado actual

- Idioma de entrada del sitio: **español** (`/` redirige a `/es/home`).
- Home y diseño principal alineados en los 3 idiomas.
- Cuatro secciones de soporte publicadas por idioma:
  - conocer
  - migrar
  - instalar
  - soporte técnico
- Página `ticket` disponible en los 3 idiomas, actualmente **despublicada** (`published: false`).
- Footer actualizado para usar datos del sitio y licencia **Creative Commons CC BY-NC 4.0**.

## Estructura principal

- Configuración: `_config.yml`, `_config_github.yml`
- Layouts: `_layouts/`
- Includes: `_includes/`
- Páginas: `_pages/{es,en,pt}/`
- Posts: `_posts/{es,en,pt}/`
- Estilos: `assets/main.scss`
- Contexto funcional: `context/intro.md`

## Requisitos

- Ruby `3.3.x` (el proyecto fija `3.3.10` en `.ruby-version`)
- Bundler `2.3.26`

## Ejecutar localmente (Ruby en macOS)

```bash
brew install ruby@3.3
echo 'export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

cd /Users/lmatas/source/github-pages-site-template
gem install bundler -v 2.3.26
bundle _2.3.26_ install
bundle _2.3.26_ exec jekyll serve --livereload --config _config.yml,_config_github.yml
```

Abrir en: `http://127.0.0.1:4000`

## Ejecutar con Docker

```bash
cd /Users/lmatas/source/github-pages-site-template
./server_docker.sh
```

Abrir en: `http://127.0.0.1:4000`

## Build de producción

```bash
bundle _2.3.26_ exec jekyll build --config _config.yml,_config_github.yml
```

## Personalización rápida

1. Edita identidad, URL y contacto en `_config.yml` y `_config_github.yml`.
2. Publica/despublica secciones con `published: true/false` en `_pages` y `_posts`.
3. Ajusta paleta en `_data/theme.yml`.
4. Ajusta diseño en `assets/main.scss`.
