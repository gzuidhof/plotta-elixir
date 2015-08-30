defmodule Plotta.PlotController do
  use Plotta.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"plot_id" => plot_id} = params) do
    render conn, "plot.html", plot_id: plot_id
  end
end
