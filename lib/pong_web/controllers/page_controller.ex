defmodule PongWeb.PageController do
  use PongWeb, :controller

  def home(conn, _params) do
    conn
    |> put_flash(:error, "Let's pretend we have an error.")
    |> put_flash(:error, "Let's pretend we have an error 2.")
    |> redirect(to: ~p"/redirect_test")
  end

  def redirect_test(conn, _params) do
    render(conn, :home, layout: false)
  end
end
