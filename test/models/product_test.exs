defmodule Yii.ProductTest do
  use Yii.ModelCase

  alias Yii.Product

  @valid_attrs %{name: "some content", price: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Product.changeset(%Product{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Product.changeset(%Product{}, @invalid_attrs)
    refute changeset.valid?
  end
end
