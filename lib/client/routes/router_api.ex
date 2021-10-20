defmodule PhoenixFeatureBasedApp.RouterAPI do
  use PhoenixFeatureBasedApp, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # our code

  # non-protected API endpoints used by the CMS
#  scope "/api", PhoenixFeatureBasedAppAPI do
#    pipe_through :api

#    get "/tags", TagsController, :tags_api
#  end

# protected API endpoints
scope "/api/v1", PhoenixFeatureBasedApp, as: :api_v1 do
  pipe_through [:api]

  get  "/tags",                          TagsController,         :tags
end

end


