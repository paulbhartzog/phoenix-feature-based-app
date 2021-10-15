# for verbose output
ExUnit.start(trace: true)
# ExUnit.start()

Ecto.Adapters.SQL.Sandbox.mode(PhoenixFeatureBasedApp.Repo, :manual)
