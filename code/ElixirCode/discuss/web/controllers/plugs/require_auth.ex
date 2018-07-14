defmodule Discuss.Plugs.RequireAuth do
  import Plug.Conn
  import Phoenix.Controller

  alias Discuss.Router.Helpers


  # Will only be executed once for the lifetime of an app.
  def init(_params) do
  end

  # Called every time a request is piped through the plug.
  # `params` here is the return value of `init()`
  def call(conn, _params) do
    if conn.assigns[:user] do
      conn
    else
      conn
      |> put_flash(:error, "You must be logged in.")
      |> redirect(to: Helpers.topic_path(conn, :index))
      |> halt()
    end
  end

end
