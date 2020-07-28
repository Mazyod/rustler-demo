defmodule RustlerDep do
  @moduledoc """
  Documentation for `RustlerDep`.
  """
  use Rustler, otp_app: :rustler_dep, crate: "rustlerdep"

  # When your NIF is loaded, it will override this function.
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
