defmodule MultiRepo.MixProject do
  use Mix.Project

  def project do
    [
      app: :multi_repo,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MultiRepo.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.10"},
      {:ash_postgres, "~> 1.3.6"}
    ]
  end

   defp aliases do
    [
      setup: ["deps.get", "ash_postgres.setup"],
      reset: ["ash_postgres.reset"],
      "ash_postgres.setup": ["ash_postgres.create", "ash_postgres.migrate"],
      "ash_postgres.reset": ["ash_postgres.drop", "ash_postgres.setup"]
    ]
  end
end
