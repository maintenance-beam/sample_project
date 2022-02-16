defmodule SampleProject.MixProject do
  use Mix.Project

  @app :sample_project
  @name "SampleProject"
  @repo_url "https://github.com/maintenance-beam/sample_project"

  def project do
    [
      app: @app,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: @name,
      source_url: @repo_url,
      # homepage_url: @repo_url,
      docs: docs()
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
      {:ex_doc, "~> 0.28", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      # The main page in the docs
      main: @name,
      authors: ["Eksperimental"],
      extras: [
        "README.md": [filename: "readme", title: "Readme"]
      ]
    ]
  end
end
