# Localize.Inputs.Core

Shared base for the Localize.Inputs family of locale-aware form-input libraries. You usually don't depend on this directly — install one of the sibling packages instead:

* [`localize_number_inputs`](https://hex.pm/packages/localize_number_inputs) — `<.number_input>` and `<.unit_input>`.
* [`localize_datetime_inputs`](https://hex.pm/packages/localize_datetime_inputs) — `<.date_input>`, `<.date_range_input>`, `<.date_range_picker>`, and a server-rendered `DatePickerLive` LiveComponent.
* [`money_input`](https://hex.pm/packages/money_input) — `<.money_input>` and `<.currency_picker>`.

This package carries the bits all three depend on:

* `Localize.Inputs.ValidationError` — the structured exception every validator returns.
* `Localize.Inputs.Gettext` — Gettext backend hosting the shared UI strings (button labels, ARIA labels).
* `priv/static/localize_inputs_core.css` — the `--li-*` CSS variable tokens (light + dark mode), the `.sr-only` utility, and the mobile-sheet `@keyframes`.

## Installation

```elixir
def deps do
  [
    {:localize_inputs_core, "~> 0.1"}
  ]
end
```

This is normally pulled in transitively by one of the sibling input libraries.

## Theming

The token set lives in [`priv/static/localize_inputs_core.css`](priv/static/localize_inputs_core.css). Override individual tokens in your own stylesheet to retint the whole input family:

```css
@import "../../deps/localize_inputs_core/priv/static/localize_inputs_core.css";

:root {
  --li-accent: theme("colors.indigo.600");
  --li-radius: 0.5rem;
}
```

The defaults include a dark-mode block that activates on `@media (prefers-color-scheme: dark)` AND on `[data-theme="dark"]`. Pass `data-theme="light"` on `<html>` to force the light palette regardless of OS preference.
