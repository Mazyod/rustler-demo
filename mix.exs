defmodule RustlerDep.MixProject do
  use Mix.Project

  def project do
    [
      app: :rustler_dep,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      build_embedded: true,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, github: "evnu/rustler", branch: "fix-missing-lib", sparse: "rustler_mix"}
    ]
  end
end
