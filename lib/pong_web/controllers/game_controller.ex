defmodule PongWeb.GameController do
  use PongWeb, :controller

  def game(conn, _params) do
    conn
    |> put_layout(html: :game)
    |> render(:game_background)
  end
end
