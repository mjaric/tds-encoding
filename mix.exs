defmodule Tds.Encoding.MixProject do
  use Mix.Project

  def project do
    [
      app: :tds_encoding,
      compilers: [:rustler] ++ Mix.compilers(),
      version: "1.0.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      rustler_crates: [
        tds_encoding: [
          mode: (if Mix.env() == :prod, do: :release, else: :debug)
        ]
      ],
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
      {:rustler, "~> 0.21.0"}
    ]
  end

  defp package do
    [
      maintainers: ["Milan Jarić"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mjaric/tds-encoding"},
      files:
        ~w(.formatter.exs mix.exs README.md lib)
    ]
  end
end
