defmodule BSONMap.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :bsonmap,
     description: ".",
     package: package,
     version: @version,
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: [coveralls: :test],
     docs: [source_ref: "v#{@version}", main: "readme", extras: ["README.md"]]]
  end

  def application do
    [applications: [:logger, :bson]]
  end

  defp deps do
    [{:bson, "~> 0.4.4"},
     {:faker, "~> 0.6.0", only: [:dev, :test]},
     {:benchfella, "~> 0.3.0", only: [:dev, :test]},
     {:ex_doc, ">= 0.0.0", only: [:dev, :test]},
     {:excoveralls, "~> 0.5", only: [:dev, :test]},
     {:dogma, "~> 0.1", only: [:dev, :test]},
     {:credo, "~> 0.4", only: [:dev, :test]}]
  end

  defp package do
    [contributors: ["Andrew Dryga"],
     maintainers: ["Andrew Dryga"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/Nebo15/bsonmap"},
     files: ~w(lib LICENSE.md mix.exs README.md)]
  end
end