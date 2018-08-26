defmodule GigalixirExWeb.PageController do
  use GigalixirExWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
