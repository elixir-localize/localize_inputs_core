defmodule Localize.InputsCoreTest do
  use ExUnit.Case, async: true

  test "ValidationError exception carries errors keyword list" do
    err = Localize.Inputs.ValidationError.exception(errors: [{:min, "too small"}])
    assert %Localize.Inputs.ValidationError{errors: [{:min, "too small"}]} = err
  end

  test "Gettext backend module is defined" do
    assert Code.ensure_loaded?(Localize.Inputs.Gettext)
  end
end
