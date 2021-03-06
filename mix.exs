defmodule FSModEvent.Mixfile do
  @moduledoc false
  use Mix.Project

  def project do
    [
      app: :elixir_mod_event,
      name: "elixir_mod_event",
      version: "0.0.10",
      description: description(),
      package: package(),
      source_url: "https://github.com/marcelog/elixir_mod_event",
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    """
    Elixir client for FreeSWITCH mod_event_socket.

    Find the user guide in the github repo at: https://github.com/marcelog/elixir_mod_event.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Marcelo Gornstein"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/marcelog/elixir_mod_event"
      }
    ]
  end

  defp deps do
    [
      {:earmark, "~> 1.0", only: :dev},
      {:ex_doc, "~> 0.14", only: :dev},
      {:coverex, "~> 1.4", only: :test},
      {:connection, "~> 1.0"},
      {:jiffy, "~> 1.0"},
      {:backoff, "~> 1.1"},
      {:elixir_uuid, "~> 1.2"},
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},
      {:credo, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end
end
