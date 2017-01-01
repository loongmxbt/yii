defmodule Yii.Tag do
  use Yii.Web, :model

  schema "tags" do
    field :name, :string
    field :slug, :string
    field :image, :string
    field :description, :string
    
    has_many :products_tags, Yii.ProductTag
    has_many :products, through: [:products_tags, :product]
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :slug, :image, :description])
    |> validate_required([:name, :slug])
  end
end
