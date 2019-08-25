defmodule MysiteWeb.PageController do
  use MysiteWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
