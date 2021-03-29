# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :rockemeals,
  ecto_repos: [Rockemeals.Repo]

config :rockemeals, Rockemeals.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :rockemeals, RockemealsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZZOJfzgmKYDz8/XAelLDZ1tSD5tRlUeT1Rq787ng5WJmN7P/7sU1a51KWSZiI1xF",
  render_errors: [view: RockemealsWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Rockemeals.PubSub,
  live_view: [signing_salt: "YPj3oSwD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
