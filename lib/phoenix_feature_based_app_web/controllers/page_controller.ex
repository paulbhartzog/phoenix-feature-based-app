defmodule PhoenixFeatureBasedAppWeb.PageController do
  use PhoenixFeatureBasedAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
