defmodule Yii.PageController do
  use Yii.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"slug" => slug}) do
    case slug do
      "app" -> render conn, "app.html"
      "about" -> render conn, "about.html"
      "service" -> render conn, "service.html"
      "partner" -> render conn, "partner.html"
      _ -> render conn, Yii.ErrorView, "404.html"
    end
  end



end
