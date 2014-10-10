defmodule Playground.Mixfile do
  use Mix.Project

  def project do
    [app: :playground,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end


  def application do
    [applications: [:logger],
     mod: {Playground, []}]
  end


  defp deps do
    [
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.6",  only: :dev},
      {:poison, "~> 1.2.0"},
      {:cowboy, "~> 1.0.0"},
      {:plug, "~> 0.8.0"}
    ]
  end
end
