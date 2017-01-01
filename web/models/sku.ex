defmodule Yii.Sku do
  use Yii.Web, :model

  schema "skus" do
    field :price, :integer
    field :cycles, :integer
    field :code, :string
    field :location, :string
    
    belongs_to :product, Yii.Product
    belongs_to :user, Yii.User
    belongs_to :status, Yii.Status

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:price, :cycles, :code, :status_id, :location, :product_id, :user_id])
    |> validate_required([:product_id, :status_id, :price, :code])
  end
end
