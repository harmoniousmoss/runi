defmodule Ppg.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PpgWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:ppg, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Ppg.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Ppg.Finch},
      # Start a worker by calling: Ppg.Worker.start_link(arg)
      # {Ppg.Worker, arg},
      # Start to serve requests, typically the last entry
      PpgWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Ppg.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PpgWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
