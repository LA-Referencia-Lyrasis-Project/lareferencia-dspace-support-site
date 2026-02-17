# Repository Conventions

## Core Structure
- `_config.yml`: primary site settings and defaults.
- `_config_github.yml`: GitHub Pages aligned settings.
- `_pages/en`, `_pages/es`, `_pages/pt`: localized static pages.
- `_posts/en`, `_posts/es`, `_posts/pt`: localized posts.
- `_layouts`, `_includes`: shared templates/components.
- `_data/theme.yml`: centralized palette values.
- `assets/main.scss`: style system consuming palette via CSS variables.

## Navigation and Ordering
- Navigation is built from published pages sorted by frontmatter `order`.
- Home post list is explicitly sorted by `home_order`.
- Avoid relying on `date` for homepage ordering.

## Localization Contracts
- `language`: locale code (`en`, `es`, `pt`).
- `language_reference`: cross-language key for equivalent content.
- Keep one equivalent page/post per language when possible.

## Branding and Neutrality
- Header logo path: `assets/img/logo-dummy.svg`.
- Keep visual language neutral and reusable.
- Centralize color changes in `_data/theme.yml`.

## Local-Only Files
- Keep generated and machine-local files out of git using `.gitignore`.
- Typical exclusions include `_site`, `.jekyll-cache`, `.bundle`, `vendor/bundle`, `.DS_Store`, and IDE folders.
