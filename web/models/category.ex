defmodule Yii.Category do
  use Yii.Web, :model

  schema "categories" do
    field :name, :string
    field :slug, :string
    field :image, :string
    field :description, :string

    has_many :products, Yii.Product
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
