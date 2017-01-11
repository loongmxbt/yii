defmodule Yii.Web do
  @moduledoc """
  A module that keeps using definitions for controllers,
  views and so on.

  This can be used in your application as:

      use Yii.Web, :controller
      use Yii.Web, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below.
  """

  def model do
    quote do
      use Ecto.Schema
      # alias Yii.Repo

      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      # def all, do: Repo.all(__MODULE__)
    end
  end

  def controller do
    quote do
      use Phoenix.Controller

      alias Yii.Repo
      import Ecto
      import Ecto.Query

      import Yii.Router.Helpers
      import Yii.Gettext

      import Bodyguard.Controller
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "web/templates"

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_csrf_token: 0, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import Yii.Router.Helpers
      import Yii.ErrorHelpers
      import Yii.Gettext

      import Bodyguard.ViewHelpers
    end
  end

  def router do
    quote do
      use Phoenix.Router
    end
  end

  def channel do
    quote do
      use Phoenix.Channel

      alias Yii.Repo
      import Ecto
      import Ecto.Query
      import Yii.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
