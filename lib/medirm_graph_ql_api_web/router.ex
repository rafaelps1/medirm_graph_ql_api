defmodule MedirmGraphQlApiWeb.Router do
  use MedirmGraphQlApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward("/graphql", Absinthe.Plug, schema: MedirmGraphQlApiWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: MedirmGraphQlApiWeb.Schema)
    end
  end
end
