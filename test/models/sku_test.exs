defmodule Yii.SkuTest do
  use Yii.ModelCase

  alias Yii.Sku

  @valid_attrs %{code: "some content", cycles: 42, location: "some content", price: 42, status: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Sku.changeset(%Sku{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Sku.changeset(%Sku{}, @invalid_attrs)
    refute changeset.valid?
  end
end
