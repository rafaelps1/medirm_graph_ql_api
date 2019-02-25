defmodule MedirmGraphQlApiWeb.Resolvers.UserResolver do
  alias MedirmGraphQlApi.Accounts

  def users(_root, _args, %{context: context}) do
    IO.inspect(context)
    {:ok, Accounts.list_users()}
  end

  def register_user(_, %{input: input}, _) do
    Accounts.create_user(input)
  end
end
