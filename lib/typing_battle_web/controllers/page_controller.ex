defmodule TypingBattleWeb.PageController do
  use TypingBattleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
