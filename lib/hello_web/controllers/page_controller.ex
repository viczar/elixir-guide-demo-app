defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end

  def redirect_test(conn, _params) do
    render(conn, "index.html")
  end
end
