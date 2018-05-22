defmodule Ddate.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ddate,
      version: "0.0.2",
      elixir: "~> 1.0",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      name: "Ddate",
      deps: deps()
    ]
  end

  def application, do: []

  defp deps, do: []
  defp description, do: "Discordian Date system library"

  defp package() do
    [
      maintainers: ["Redvers Davies"],
      licenses: ["GPLv2"],
      links: %{"GitHub" => "https://github.com/redvers/ddate"}
    ]
  end
end
