defmodule Yii.Repo.Migrations.CreateStatus do
  use Ecto.Migration

  def change do
    create table(:statuses) do
      add :name, :string

    end

  end
end
