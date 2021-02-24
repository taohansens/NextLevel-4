defmodule Rocketpay.Users.Create do
  alias Rocketpay.{Repos, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
