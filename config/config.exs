# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :medirm_graph_ql_api,
  ecto_repos: [MedirmGraphQlApi.Repo]

# Configures the endpoint
config :medirm_graph_ql_api, MedirmGraphQlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yxw1SZtR3NhsQk1SPTSsvyF464D9/zViiVbR1OmiaQpdJ940m0jaZtkka2zbitLb",
  render_errors: [view: MedirmGraphQlApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MedirmGraphQlApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Guardian config details
config :medirm_graph_ql_api, MedirmGraphQlApi.Guardian,
       issuer: "medirm_graph_ql_api",
       secret_key: "4uN+dqgJF2l9AWPv6xah0crzmzklS//9b9C7vV4rqIcddsEBgLBCVm4fhFofZLcY"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
