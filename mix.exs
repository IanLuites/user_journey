defmodule UserJourney.MixProject do
  use Mix.Project

  def project do
    [
      app: :user_journey,
      description: "Create complex user journeys the simple way.",
      version: "0.0.1-pre0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),

      # # Testing
      # test_coverage: [tool: ExCoveralls],
      # preferred_cli_env: [
      #   coveralls: :test,
      #   "coveralls.detail": :test,
      #   "coveralls.post": :test,
      #   "coveralls.html": :test
      # ],
      # dialyzer: [ignore_warnings: ".dialyzer", plt_add_deps: true],

      # Docs
      name: "User Journey",
      source_url: "https://github.com/IanLuites/user_journey",
      homepage_url: "https://github.com/IanLuites/user_journey",
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  def package do
    [
      name: :user_journey,
      maintainers: ["Ian Luites"],
      licenses: ["MIT"],
      files: [
        "lib/user_journey.ex",
        ".formatter.exs",
        "mix.exs",
        "README*",
        "LICENSE*"
      ],
      links: %{
        "GitHub" => "https://github.com/IanLuites/user_journey"
      }
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev, runtime: false}]
  end
end
