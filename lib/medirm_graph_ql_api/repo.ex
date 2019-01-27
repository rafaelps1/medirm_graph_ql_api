defmodule MedirmGraphQlApi.Repo do
  use Ecto.Repo,
    otp_app: :medirm_graph_ql_api,
    adapter: Ecto.Adapters.MySQL
end
