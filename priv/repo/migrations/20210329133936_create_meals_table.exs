defmodule Rockemeals.Repo.Migrations.CreateMealsTable do
  use Ecto.Migration

  def change do
    create table :meals do
      add :descricao, :string
      add :data, :naive_datetime
      add :calorias, :string

      timestamps()
    end
  end
end
