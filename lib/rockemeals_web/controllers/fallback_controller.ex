defmodule RockemealsWeb.FallbackController do
  use RockemealsWeb, :controller

  alias Rockemeals.Error
  alias RockemealsWeb.ErrorView

  def call(conn, {:error, %Error{status: status, result: result}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
