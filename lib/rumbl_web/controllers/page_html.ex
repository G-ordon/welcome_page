defmodule RumblWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use RumblWeb, :html
  alias Rumbl.Accounts

  embed_templates "page_html/*"
  def link("View") do
    "link View, to: Routes.user_path(@conn, :show, user.id)"
  end

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
