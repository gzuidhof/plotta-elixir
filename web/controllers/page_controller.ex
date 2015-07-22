defmodule Plotta.PageController do
  use Plotta.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
