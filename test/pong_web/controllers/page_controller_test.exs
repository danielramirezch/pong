defmodule PongWeb.PageControllerTest do
  use PongWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Peace of mind from prototype to production"
  end

  test "GET /game", %{conn: conn} do
    conn = get(conn, ~p"/game")
    assert html_response(conn, 200)
  end
end
