# Content and Localization Playbook

## Updating Pages
1. Edit the EN source page first.
2. Mirror structure in ES and PT equivalents.
3. Keep `language_reference` identical across the three files.
4. Keep `order` aligned if the page is in navigation.
5. Keep `published` aligned unless a locale intentionally differs.

## Updating Posts
1. Update or create the EN post.
2. Create matching ES and PT posts.
3. Keep `language_reference` identical across locales.
4. Set explicit `home_order` in each locale for homepage listing.
5. Keep excerpt behavior stable (`excerpt_separator: <!--more-->`).

## Maintaining Consistency
1. Keep link targets localized (`/en/...`, `/es/...`, `/pt/...`).
2. Keep CTA intent aligned even if wording differs.
3. Keep section IDs locale-safe when using in-page anchors.

## Quick Regression Checks
1. Compare nav items across EN/ES/PT.
2. Compare homepage post titles and order across EN/ES/PT.
3. Confirm no missing locale file after structural edits.
