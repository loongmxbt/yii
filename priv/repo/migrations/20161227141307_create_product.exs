defmodule Yii.Repo.Migrations.CreateProduct do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :name, :string
      add :price, :integer
      add :image, :string
      add :description, :text
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps()
    end
    create index(:products, [:category_id])

  end
end
