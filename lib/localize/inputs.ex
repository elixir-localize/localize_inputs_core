defmodule Localize.Inputs do
  @moduledoc """
  Shared base for the Localize.Inputs family of locale-aware
  form input libraries:

  * [`localize_number_inputs`](https://hex.pm/packages/localize_number_inputs)
    — `Localize.Inputs.Number.*` (number, unit, currency-style
    numeric input via `Localize.Inputs.Number.Components.number_input/1`
    and `unit_input/1`).

  * [`localize_datetime_inputs`](https://hex.pm/packages/localize_datetime_inputs)
    — `Localize.Inputs.Date.*` (and later `.Time` / `.DateTime`),
    plus the popup-calendar Phoenix component family. Depends on
    `calendrical` for multi-calendar arithmetic.

  * [`money_input`](https://hex.pm/packages/money_input) —
    `Money.Input.*` (money amount with currency picker). Lives
    in the Money library family; included in the Localize.Inputs
    playground for demonstration.

  This `localize_inputs_core` package ships the bits that all of
  the above use:

  * `Localize.Inputs.ValidationError` — the shared validation
    error exception every validator returns.

  * `Localize.Inputs.Gettext` — the Localize-interpolated
    Gettext backend used for the libraries' UI strings (button
    labels, ARIA labels, hint text).

  * `priv/static/localize_inputs_core.css` — the
    `--li-*` CSS variable token set with light- and dark-mode
    defaults; consumer libraries reference the same tokens so
    a single theme override at the host-app level retints every
    Localize input.

  No HEEx components, parsers, or JS hooks live here. Each
  sibling library carries its own.

  """
end
