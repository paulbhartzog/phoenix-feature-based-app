defmodule PhoenixFeatureBasedAppTest do
  use ExUnit.Case
  doctest PhoenixFeatureBasedApp

  test "greets the world" do
    assert PhoenixFeatureBasedApp.hello() == :world
  end
end
