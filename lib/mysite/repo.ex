defmodule Mysite.Repo do
  use Ecto.Repo,
    otp_app: :mysite,
    adapter: Ecto.Adapters.Postgres
end
