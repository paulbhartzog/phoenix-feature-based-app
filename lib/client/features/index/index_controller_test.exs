defmodule PhoenixFeatureBasedApp.IndexControllerTest do
  use PhoenixFeatureBasedApp.ConnCase, async: true

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) # =~ "<a href=\"/feature1\">Feature 1</a>"
  end
end
