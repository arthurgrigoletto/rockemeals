defmodule RockemealsWeb.UsersController do
  use RockemealsWeb, :controller

  alias Rockemeals.User
  alias RockemealsWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Rockemeals.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
