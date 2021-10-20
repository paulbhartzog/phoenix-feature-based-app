defmodule PhoenixFeatureBasedApp.TagsController do
  use PhoenixFeatureBasedApp, :controller

  alias PhoenixFeatureBasedApp.Tags

  def index(conn, _params) do
    conn
    |> put_layout(false)
    |> render("index.html")
  end

  def show(conn, _params) do
    tags = Tags.list_tags()
    conn
    |> put_layout(false)
    |> render("show.html", tags: tags)
  end

  def tags(conn, _params) do
    case Tags.list_tags() do
      [] ->
        conn |> send_resp(404, "") |> halt()
      results = _ ->
        json(conn, results)
    end
  end


end
