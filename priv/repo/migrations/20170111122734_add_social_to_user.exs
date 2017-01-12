defmodule Yii.Repo.Migrations.AddSocialToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :weixin, :string
      add :weibo, :string
    end
  end
end
