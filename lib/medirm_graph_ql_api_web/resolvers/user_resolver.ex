defmodule MedirmGraphQlApiWeb.Resolvers.UserResolver do
  alias MedirmGraphQlApi.Accounts

  def users(_root, _args, _info ) do
    users = Accounts.list_users()
    {:ok, users}
  end

  def register_user(_, %{input: input}, _) do
    Accounts.create_user(input)
  end
end
