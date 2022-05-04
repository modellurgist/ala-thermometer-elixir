defmodule ThermometerWeb.PageController do
  use ThermometerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
