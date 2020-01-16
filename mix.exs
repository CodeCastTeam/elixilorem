defmodule Elixilorem.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixilorem,
      version: "0.0.1",
      elixir: ">= 1.7.3",
      description: "A Lorem Ipsum generator for Elixir",
      package: package(),
      deps: []
    ]
  end

  def application,
    do: [
      env: [
        extension: ".txt",
        flavors: ["lorem_ipsum", "iliad", "frankenstein", "lorem_ipsum", "riker", "cat"],
        flavor: "lorem_ipsum",
        format: "text",
        joins: [paragraphs: "\n", sentences: ". ", words: " "]
      ]
    ]

  defp package do
    [
      files: ~w(lib priv mix.exs README.md LICENSE.md),
      contributors: ["Garrett Amini", "Mike Martinson"],
      licenses: ["MIT"],
      links: %{Github: "https://github.com/mgamini/elixilorem"}
    ]
  end
end
