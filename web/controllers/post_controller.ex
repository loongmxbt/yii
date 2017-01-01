defmodule Yii.PostController do
  use Yii.Web, :controller
  alias Yii.{Repo, Post}

  def index(conn, _params) do
    query = from p in Post,
            select: [:id, :title, :image, :inserted_at],
            order_by: [desc: p.inserted_at],
            where: p.published == true
    posts = Repo.all(query)
    render(conn, "index.html", posts: posts)
  end

  def show(conn, %{"id" => id}) do
    post = Repo.get(Post, id)

    cond do
      post == nil -> render(conn, Yii.ErrorView, "404.html")
      post.published == false -> render(conn, Yii.ErrorView, "404.html")
      true -> render(conn, "show.html", post: post)
    end

  end
end
