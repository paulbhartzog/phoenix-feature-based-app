defmodule PhoenixFeatureBasedApp.Feature1Controller do
  use PhoenixFeatureBasedApp, :controller

  def index(conn, _params) do
    conn
    |> put_layout(false)
    |> render("index.html")
  end

  def show(conn, _params) do
    conn
    |> put_layout(false)
    |> render("show.html")
  end

  def feature1_api(conn, _params) do
    conn
    |> put_layout(false)
    |> render("index.html")
  end



  def test(conn, _params) do
    test = %{
      test: "test"
    }
    json(conn, test)
#    case Tags.list_tags() do
#      [] ->
#        conn |> send_resp(404, "") |> halt()
#      results = _ ->
#        json(conn, test)
#    end
  end








end
