defmodule Yii.Product do
  use Yii.Web, :model

  schema "products" do
    field :name, :string
    field :price, :integer
    field :image, :string
    field :description, :string
    belongs_to :category, Yii.Category
    has_many :skus, Yii.Sku

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :price, :category_id])
    |> validate_required([:name, :price, :category_id])
  end
end
