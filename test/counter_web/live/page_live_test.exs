defmodule CounterWeb.PageLiveTest do
  use CounterWeb.ConnCase
  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live (conn, "/")
    assert disconnected_html =~ "0"
    assert render(page_live) =~ "0"
end

  test "increment event and decrement", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live (conn, "/")
    assert disconnected_html =~ "0"
    assert render(page_live) =~ "0"
end
