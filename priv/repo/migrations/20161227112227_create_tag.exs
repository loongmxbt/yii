defmodule Yii.Repo.Migrations.CreateTag do
  use Ecto.Migration

  def change do
    create table(:tags) do
      add :name, :string
      add :slug, :string
      add :image, :string
      add :description, :text

    end

  end
end
