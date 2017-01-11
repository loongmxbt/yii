defmodule Yii.ProductController do
  use Yii.Web, :controller

  alias Yii.Product

  def index(conn, _params) do
    products = Repo.all(Product)
    render(conn, "index.json", products: products)
  end

  def show(conn, %{"id" => id}) do
    product = Repo.get!(Product, id)
    render(conn, "show.json", product: product)
  end

end
