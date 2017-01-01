defmodule Yii.Router do
  use Yii.Web, :router
  use ExAdmin.Router
  use Coherence.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session
  end

  pipeline :protected do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Coherence.Authentication.Session, protected: true
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :browser
    coherence_routes
  end

  scope "/" do
    pipe_through :protected
    coherence_routes :protected
  end

  scope "/", Yii do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/page/:slug", PageController, :show
    get "/posts", PostController, :index
    get "/posts/:id", PostController, :show
  end

  scope "/admin", ExAdmin do
    pipe_through :browser
    admin_routes
  end

  scope "/", Yii do
    pipe_through :protected

  end

  # Other scopes may use custom stacks.
  # scope "/api", Yii do
  #   pipe_through :api
  # end
end
