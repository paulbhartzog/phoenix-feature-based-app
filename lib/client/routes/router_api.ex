defmodule PhoenixFeatureBasedApp.RouterAPI do
  use PhoenixFeatureBasedApp, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # our code

  # non-protected API endpoints used by the CMS
#  scope "/api", PhoenixFeatureBasedAppAPI do
#    pipe_through :api

#    get "/feature1", Feature1Controller, :feature1_api
#  end

# protected API endpoints
scope "/api/v1", PhoenixFeatureBasedApp, as: :api_v1 do
  pipe_through [:api]

  get  "/feature1",                      Feature1Controller,         :test
end

end


