defmodule Core.MultiRouterPlug do
  @behaviour Plug

  def init(opts \\ []) do
    Enum.into(opts, %{})
  end

  def call(conn, %{routers: routers}) when is_list(routers) do
    Enum.reduce(routers, conn, fn router, conn ->
      try do
        router.call(conn, [])
      rescue
        Phoenix.Router.NoRouteError -> conn
      end
    end)
  end
end