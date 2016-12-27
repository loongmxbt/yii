defmodule Yii.Repo.Migrations.CreateSku do
  use Ecto.Migration

  def change do
    create table(:skus) do
      add :price, :integer
      add :cycles, :integer
      add :code, :string
      add :status, :string
      add :location, :string
      add :product_id, references(:products, on_delete: :nothing)
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end
    create index(:skus, [:product_id])
    create index(:skus, [:user_id])

  end
end
