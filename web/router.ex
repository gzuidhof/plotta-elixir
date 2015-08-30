defmodule Plotta.Router do
  use Plotta.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Plotta do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/plot", PlotController, :index
    get "/plot/:plot_id", PlotController, :show
    resources "/plot", PlotController, except: [:delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Plotta do
  #   pipe_through :api
  # end
end
