defmodule MedirmGraphQlApiWeb.Router do
  use MedirmGraphQlApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MedirmGraphQlApiWeb do
    pipe_through :api
  end
end
