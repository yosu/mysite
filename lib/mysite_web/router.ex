defmodule MysiteWeb.Router do
  use MysiteWeb, :router

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

  scope "/", MysiteWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/cms", MysiteWeb.CMS, as: :cms do
    pipe_through :browser

    resources "/posts", PostController
  end

  # Other scopes may use custom stacks.
  # scope "/api", MysiteWeb do
  #   pipe_through :api
  # end
end
