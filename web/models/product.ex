defmodule Yii.Product do
  use Yii.Web, :model

  schema "products" do
    field :name, :string
    field :price, :integer
    field :image, :string
    field :description, :string
    
    belongs_to :category, Yii.Category
    has_many :skus, Yii.Sku
    has_many :products_tags, Yii.ProductTag
    has_many :tags, through: [:products_tags, :tag]

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
