defmodule Yii.OrderTest do
  use Yii.ModelCase

  alias Yii.Order

  @valid_attrs %{destination: "some content", detail: "some content", height: 42, size: "some content", weight: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Order.changeset(%Order{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Order.changeset(%Order{}, @invalid_attrs)
    refute changeset.valid?
  end
end
