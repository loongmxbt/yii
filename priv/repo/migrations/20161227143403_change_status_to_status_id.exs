defmodule Yii.Repo.Migrations.ChangeStatusToStatusId do
  use Ecto.Migration

  def change do
    alter table(:skus) do
      remove :status
      add :status_id, references(:statuses, on_delete: :nothing)
    end
  end
end
