use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :medirm_graph_ql_api, MedirmGraphQlApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :medirm_graph_ql_api, MedirmGraphQlApi.Repo,
  username: "root",
  password: "",
  database: "medirm_graph_ql_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
