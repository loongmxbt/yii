defmodule Yii.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :image, :string
      add :content, :text
      add :published, :boolean, default: false, null: false

      timestamps()
    end

  end
end
