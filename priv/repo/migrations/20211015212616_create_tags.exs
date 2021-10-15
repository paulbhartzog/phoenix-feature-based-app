defmodule PhoenixFeatureBasedApp.Repo.Migrations.CreateTags do
  use Ecto.Migration

  def up do
    create_if_not_exists table(:tags) do
      add :name, :string
      timestamps()
    end

    create unique_index(:tags, [:name])
  end

  def down do
    drop_if_exists table(:tags)
  end
end
