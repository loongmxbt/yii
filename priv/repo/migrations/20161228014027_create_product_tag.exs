defmodule Yii.Repo.Migrations.CreateProductTag do
  use Ecto.Migration

  def change do
    create table(:products_tags) do
      add :product_id, references(:products, on_delete: :delete_all)
      add :tag_id, references(:tags, on_delete: :delete_all)
    end

    create index(:products_tags, [:product_id])
    create index(:products_tags, [:tag_id])
  end
end
