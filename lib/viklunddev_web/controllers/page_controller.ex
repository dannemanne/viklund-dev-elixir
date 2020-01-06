defmodule ViklunddevWeb.PageController do
  use ViklunddevWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def clicker(conn, _params) do
    render conn, "clicker.html"
  end
end
