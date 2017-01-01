defmodule Yii.Status do
  use Yii.Web, :model

  schema "statuses" do
    field :name, :string

    has_many :skus, Yii.Sku
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name])
    |> validate_required([:name])
  end
end
