defmodule Yii.Post do
  use Yii.Web, :model

  schema "posts" do
    field :title, :string
    field :image, :string
    field :content, :string
    field :published, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :image, :content, :published])
    |> validate_required([:title, :published])
  end
end
