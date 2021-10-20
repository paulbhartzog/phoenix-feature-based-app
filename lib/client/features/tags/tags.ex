defmodule PhoenixFeatureBasedApp.Tags do
  @moduledoc """
  Functions the API utilizes to return Platform information.
  """
  import Ecto.Query, warn: false
  alias PhoenixFeatureBasedApp.Repo
  alias PhoenixFeatureBasedApp.Tag

  @doc """
  Returns a list of tags.

  Returns an empty list if no tags exist.

  ## Examples

      iex> list_tags
      [%Tag{}, ...]

      iex> list_tags
      nil

  """
  def list_tags do
    Tag
    #|> select([:name])
    #|> order_by(:name)
    |> Repo.all
    |> Enum.map(fn x ->
      %{
        name: x.name
      }
    end)
  end




end
