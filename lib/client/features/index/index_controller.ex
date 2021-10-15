defmodule PhoenixFeatureBasedApp.IndexController do
  use PhoenixFeatureBasedApp, :controller

  def index(conn, _params) do
    conn
    |> put_layout(false)
    |> render("index.html")
  end
end
