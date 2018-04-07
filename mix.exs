defmodule ExGram.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_gram,
      version: "0.5.0-rc2",
      elixir: "~> 1.4",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Don't need to write all applications thanks of new feature on elixir 1.4
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:poison, "~> 2.1"},
      {:maxwell, "~> 2.2.1"},
      {:hackney, "~> 1.8.0"},
      {:dialyxir, "~> 0.5.0", only: [:dev], runtime: false},
      {:inch_ex, only: :docs}
    ]
  end
end
