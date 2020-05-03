# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :typing_battle,
  ecto_repos: [TypingBattle.Repo]

# Configures the endpoint
config :typing_battle, TypingBattleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "osbcc5dwGpwm2FGYqXmOt+Zs1EbkA4CMSfSxYSj+4+Vz06H39Al/gt+B22IfpIrf",
  render_errors: [view: TypingBattleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TypingBattle.PubSub,
  live_view: [signing_salt: "wR2iMXHB"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
