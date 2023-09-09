defmodule NearApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :near_api,
      version: "0.1.7-rx",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  defp description do
    """
    An Elixir library for DApps development on the NEAR blockchain platform
    """
  end

  defp package do
    [
      maintainers: ["Alex Filatov"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/alexfilatov/near_api",
        "Docs" => "https://hexdocs.pm/near_api"
      }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 2.1.0"},
      {:jason, "~> 1.2"},
      {:basefiftyeight, "~> 0.1.0"},
      {:ed25519, "~> 1.3"},
      {:borsh, "~> 0.1"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:remixed_remix, ">= 0.0.0", only: :dev},
      {:dialyxir, "~> 1.1", only: [:dev], runtime: false},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:exvcr, "~> 0.11", only: :test},
      {:mock, "~> 0.3.0", only: :test},
      {:excoveralls, "~> 0.10", only: :test}
    ]
  end
end
