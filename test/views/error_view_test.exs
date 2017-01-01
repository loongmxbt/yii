defmodule Yii.ErrorViewTest do
  use Yii.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "renders 404.html" do
    assert render_to_string(Yii.ErrorView, "404.html", []) =~
           "Page Not Found"
  end

  test "render 500.html" do
    assert render_to_string(Yii.ErrorView, "500.html", []) =~
           "Internal Server Error"
  end

  test "render any other" do
    assert render_to_string(Yii.ErrorView, "500.html", []) =~
           "Internal Server Error"
  end
end
