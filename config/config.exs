# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gigalixir_ex,
  ecto_repos: [GigalixirEx.Repo]

# Configures the endpoint
config :gigalixir_ex, GigalixirExWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7UG1/T/6ABN1CLmxP1ZbHG6+cemknehqPiUh+2AAfvKbhv/IfBCsEEHHTyzAh0vA",
  render_errors: [view: GigalixirExWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GigalixirEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
