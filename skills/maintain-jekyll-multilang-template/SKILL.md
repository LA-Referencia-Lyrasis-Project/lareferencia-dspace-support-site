---
name: maintain-jekyll-multilang-template
description: Maintain and evolve a multilingual Jekyll starter for GitHub Pages (EN/ES/PT) with explicit content ordering, centralized theming, and Docker-first execution. Use when updating pages, posts, navigation, styles, localization parity, or local run/build setup in this template.
---

# Maintain Jekyll Multilang Template

## Overview
Use this skill to modify and validate this neutral Jekyll template without breaking multilingual behavior, ordering rules, or local build flow.

Keep the workflow deterministic: inspect, edit, build, then verify localized parity.

## Workflow
1. Run preflight checks.
2. Choose execution mode (Docker-first, local Ruby optional).
3. Apply content, theme, or structure changes.
4. Validate build and UI behavior.
5. Verify localization parity before finishing.

## Step 1: Run Preflight Checks
1. Inspect key files before editing:
   - `_config.yml`
   - `_config_github.yml`
   - `_data/theme.yml`
   - `assets/main.scss`
   - `_includes/header.html`
   - `_includes/navigation.html`
   - `_includes/language-switch.html`
2. Confirm ordering conventions:
   - Pages are sorted by `order` in `_pages/<lang>/*.md`.
   - Home posts are sorted by `home_order` in `_pages/<lang>/home.md`.
3. Confirm localization linkage:
   - Equivalent items share the same `language_reference`.

## Step 2: Choose Execution Mode
1. Prefer Docker commands from `references/run-and-validate.md`.
2. Use local Ruby only when explicitly requested.
3. Pin Bundler to `2.3.26` when working with this repository.

## Step 3: Apply Changes Safely
1. Keep EN/ES/PT files structurally aligned.
2. Change palette only in `_data/theme.yml` unless adding a new variable.
3. Keep `assets/main.scss` focused on consuming theme values through CSS variables.
4. Keep header branding consistent:
   - Logo path: `assets/img/logo-dummy.svg`.
   - Site title must remain in a single visual row.
5. Keep template neutral:
   - Avoid hardcoding dark-mode-specific branding in content or styles.

## Step 4: Validate Before Completing
1. Run a full Jekyll build using both configs:
   - `_config.yml,_config_github.yml`
2. Confirm generated pages resolve for all languages:
   - `/en/home`
   - `/es/home`
   - `/pt/home`
3. Confirm language switch works for equivalent routes.
4. Confirm post order is explicit (`home_order`) and not date-dependent.

## Step 5: Verify Localization Parity
1. Check that each changed EN page/post has matching ES and PT equivalents.
2. Keep nav labels and page counts aligned across languages.
3. Keep internal anchor links language-specific when sections differ by locale.

## References
- For runtime and troubleshooting: `references/run-and-validate.md`
- For repository conventions: `references/repo-conventions.md`
- For localization/content rules: `references/content-and-localization.md`

## Guardrails
1. Prefer minimal, targeted edits.
2. Avoid changing dependency versions unless the task explicitly asks for migration.
3. Avoid date-based ordering for home content.
4. Keep docs and scripts in sync when run commands change.
