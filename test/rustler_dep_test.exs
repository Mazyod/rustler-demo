defmodule RustlerDepTest do
  use ExUnit.Case
  doctest RustlerDep

  test "greets the world" do
    assert RustlerDep.add(1, 2) == 3
  end
end
