defmodule Yii.User do
  use Yii.Web, :model
  use Coherence.Schema

  schema "users" do
    field :name, :string
    field :email, :string
    field :phone, :string
    field :weixin, :string
    field :weibo, :string
    coherence_schema

    has_many :orders, Yii.Order
    timestamps
  end

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, [:name, :email, :phone, :weixin, :weibo] ++ coherence_fields)
    |> validate_required([:name, :email, :phone])
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
    |> validate_coherence(params)
  end
end
