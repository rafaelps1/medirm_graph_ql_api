defmodule MedirmGraphQlApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias MedirmGraphQlApiWeb.Schema.Types

  import_types(Types.UserType)
  import_types(Types.SessionType)
  import_types(Types.PostType)
end
