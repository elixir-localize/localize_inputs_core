# Changelog

## [v0.1.0] — initial release

Extracted from `localize_inputs` 0.3 as the shared base for the split. Carries:

* `Localize.Inputs.ValidationError` — structured exception every validator returns.
* `Localize.Inputs.Gettext` — Localize-interpolated Gettext backend hosting UI translations.
* `priv/static/localize_inputs_core.css` — the `--li-*` CSS variable tokens (light + dark mode defaults), the `.sr-only` utility, and the mobile-sheet `@keyframes`.

No HEEx components, parsers, or JS hooks live here — they're in the sibling input libraries.
