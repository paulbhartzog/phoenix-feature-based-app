defmodule PhoenixFeatureBasedApp do
  @moduledoc """
  PhoenixFeatureBasedApp keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: PhoenixFeatureBasedApp

      import Plug.Conn
      import PhoenixFeatureBasedApp.Gettext
      alias PhoenixFeatureBasedApp.Router.Helpers, as: Routes
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end

end
