defmodule Rumbl.Accounts do
  @moduledoc"""
  The Accounts context.

  """
  alias Rumbl.Accounts.User


  def list_users do
    [
      %User{id: "1", name: "Jose", username: "josevalim"},
      %User{id: "2", name: "Bruce", username: "redrapidds"},
      %User{id: "3", name: "Chris", username: "chrismccord"}
    ]
  end
  @doc"""
  Gets users by ID.
  """
  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end
@doc """
  Gets a user by params.
  """
  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
