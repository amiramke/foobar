# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :foobar,
  ecto_repos: [Foobar.Repo]

# Configures the endpoint
config :foobar, Foobar.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vrvWSgfxgaFvssGo8cGNWigVuLU591qtWnKr6Q+ksgYU+Wil0Xk3aW9j/2GCeFpH",
  render_errors: [view: Foobar.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Foobar.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
