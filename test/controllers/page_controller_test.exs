defmodule Yii.PageControllerTest do
  use Yii.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Yii"
  end
end
