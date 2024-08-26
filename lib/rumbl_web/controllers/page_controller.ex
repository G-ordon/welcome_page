defmodule RumblWeb.PageController do
  use RumblWeb, :controller

  alias Rumbl.Accounts

    def home(conn, _params) do
    render(conn, :home)
  end

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.html", users: users)
  end

  def show(conn, %{"id" => id}) do
    user = Accounts.get_user(id)
    render(conn, :show, user: user)
  end
end
