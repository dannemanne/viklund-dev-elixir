defmodule ViklunddevWeb.PageControllerTest do
  use ViklunddevWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome!"
  end
end
