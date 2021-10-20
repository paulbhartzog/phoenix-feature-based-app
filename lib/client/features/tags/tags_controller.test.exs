defmodule PhoenixFeatureBasedApp.TagsControllerTest do
  use PhoenixFeatureBasedApp.ConnCase

  @moduletag :tags

  test "GET /tags", %{conn: conn} do
    conn = get(conn, "/tags")
    assert html_response(conn, 200) =~ "this test for tags controller fails ON PURPOSE"
  end
end
