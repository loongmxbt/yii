defmodule Yii.Order do
  use Yii.Web, :model

  schema "orders" do
    field :height, :integer
    field :weight, :integer
    field :size, :string
    field :detail, :string
    field :destination, :string
    belongs_to :product, Yii.Product
    belongs_to :user, Yii.User
    belongs_to :sku, Yii.Sku

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:height, :weight, :size, :detail, :destination, :product_id, :user_id, :sku_id])
    |> validate_required([:height, :weight, :size, :detail, :destination])
  end
end
