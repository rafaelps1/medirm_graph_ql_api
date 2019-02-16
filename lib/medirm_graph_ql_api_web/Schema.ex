defmodule MedirmGraphQlApiWeb.Schema do
  use Absinthe.Schema
  
  alias MedirmGraphQlApiWeb.Resolvers
  # import Types
  import_types(MedirmGraphQlApiWeb.Schema.Types)

  @doc """
  Get a list of all users
  """
  query do
    field :users, list_of(:user_type) do
      # Resolver
      resolve(&Resolvers.UserResolver.users/3)
    end
  end

  # mutarion do
  # end

  # subscription do
  # end
end
