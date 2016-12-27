defmodule Yii.Tag do
  use Yii.Web, :model

  schema "tags" do
    field :name, :string
    field :slug, :string
    field :image, :string
    field :description, :string

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
