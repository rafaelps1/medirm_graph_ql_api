defmodule MedirmGraphQlApiWeb.Resolvers.SessionResolver do
  alias MedirmGraphQlApi.{Accounts, Guardian}

  def login_user(_root, %{input: input}, _) do
    with {:ok, user} <- Accounts.Session.authenticate(input), 
         {:ok, jwt_token, _} <- Guardian.encode_and_sign(user)
    do
      {:ok, %{token: jwt_token, user: user}}
    end
  end
end
