defmodule Yii.Repo.Migrations.CreateOrder do
  use Ecto.Migration

  def change do
    create table(:orders) do
      add :height, :integer
      add :weight, :integer
      add :size, :string
      add :detail, :string
      add :destination, :string
      add :product_id, references(:products, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)
      add :sku_id, references(:skus, on_delete: :nothing)

      timestamps()
    end
    create index(:orders, [:product_id])
    create index(:orders, [:user_id])
    create index(:orders, [:sku_id])

  end
end
