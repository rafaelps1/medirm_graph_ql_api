defmodule MedirmGraphQlApiWeb.Schema do
  use Absinthe.Schema
  
  alias MedirmGraphQlApiWeb.Resolvers
  # import Types
  import_types(MedirmGraphQlApiWeb.Schema.Types)

  query do
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      # Resolver
      resolve(&Resolvers.UserResolver.users/3)
    end
  end

  mutation do
    @desc "Register a user"

    field :register_user, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.UserResolver.register_user/3)
    end
  end

  # subscription do
  # end
end
