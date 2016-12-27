defmodule Yii.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :name, :string
      add :slug, :string
      add :image, :string
      add :description, :text

    end

  end
end
