# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :viklunddev,
  ecto_repos: [Viklunddev.Repo]

# Configures the endpoint
config :viklunddev, ViklunddevWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6hr/iuk7kDBkz+tfoCGiB7tig745YonCbKhHtjeE7CNoZwUnTqph/lOVON9wwA++",
  render_errors: [view: ViklunddevWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Viklunddev.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
