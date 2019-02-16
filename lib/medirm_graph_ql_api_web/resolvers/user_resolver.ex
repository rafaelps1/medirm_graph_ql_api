defmodule MedirmGraphQlApiWeb.Resolvers.UserResolver do
  alias MedirmGraphQlApi.Accounts

  def users(_, _, _) do
    {:ok, Accounts.list_users()}
  end
end
