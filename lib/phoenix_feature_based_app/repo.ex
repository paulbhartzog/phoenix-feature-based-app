defmodule PhoenixFeatureBasedApp.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_feature_based_app,
    adapter: Ecto.Adapters.Postgres
end
