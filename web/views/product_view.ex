defmodule Yii.ProductView do
  use Yii.Web, :view

  def render("index.json", %{products: products}) do
    %{data: render_many(products, Yii.ProductView, "product.json")}
  end

  def render("show.json", %{product: product}) do
    %{data: render_one(product, Yii.ProductView, "product.json")}
  end

  def render("product.json", %{product: product}) do
    %{id: product.id,
      name: product.name,
      price: product.price,
      image: product.image,
      description: product.description}
  end
end
