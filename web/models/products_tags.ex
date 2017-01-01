defmodule Yii.ProductTag do
  use Yii.Web, :model

  schema "products_tags" do
    belongs_to :product, Yii.Product
    belongs_to :tag, Yii.Tag
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:product_id, :tag_id])
    |> validate_required([:product_id, :tag_id])
    |> assoc_constraint(:product)
    |> assoc_constraint(:tag)
  end
end
