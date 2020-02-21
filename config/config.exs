# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :around_montabaur,
  ecto_repos: [AroundMontabaur.Repo]

# Configures the endpoint
config :around_montabaur, AroundMontabaurWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EuLFUI/mvinYI+eFdP5sDdB+xf9Ragg3leD8YQR1FSSR89PiOYKPTruMM5XwZ5Bp",
  render_errors: [view: AroundMontabaurWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: AroundMontabaur.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
