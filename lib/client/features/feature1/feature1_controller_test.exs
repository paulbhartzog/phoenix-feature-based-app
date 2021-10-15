defmodule PhoenixFeatureBasedApp.Feature1ControllerTest do
  use PhoenixFeatureBasedApp.ConnCase

  @moduletag :feature1

  test "GET /feature1", %{conn: conn} do
    conn = get(conn, "/feature1")
    assert html_response(conn, 200) =~ "this test for feature1 controller fails ON PURPOSE"
  end
end
