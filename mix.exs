defmodule Tds.Encoding.MixProject do
  use Mix.Project

  def project do
    [
      app: :tds_encoding,
      compilers: Mix.compilers(),
      version: "1.0.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "String encoding/decoding NIF using rust [encoding](https://crates.io/crates/encoding) library",
      package: package(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :rustler]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.22.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
    ]
  end

  defp package do
    [
      name: "tds_encoding",
      maintainers: ["Milan Jarić"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mjaric/tds-encoding"},
      files:
        ~w(.formatter.exs mix.exs README.md lib native)
    ]
  end
end
