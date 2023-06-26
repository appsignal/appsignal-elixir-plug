defmodule Appsignal.Plug.MixProject do
  use Mix.Project

  def project do
    [
      app: :appsignal_plug,
      version: "2.0.14",
      description:
        "AppSignal's Plug instrumentation instruments calls to Plug applications to gain performance insights and error reporting",
      package: %{
        maintainers: ["Jeff Kreeftmeijer"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/appsignal/appsignal-elixir-plug"}
      },
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [
        plt_file: {:no_warn, "priv/plts/dialyzer.plt"},
        flags: ["-Wunmatched_returns", "-Werror_handling", "-Wunderspecs"]
      ]
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
      {:plug, ">= 1.1.0"},
      {:appsignal, ">= 2.7.4 and < 3.0.0"},
      {:credo, "~> 1.2", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:telemetry, "~> 0.4 or ~> 1.0"}
    ]
  end
end
