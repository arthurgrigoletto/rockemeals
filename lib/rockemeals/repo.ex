defmodule Rockemeals.Repo do
  use Ecto.Repo,
    otp_app: :rockemeals,
    adapter: Ecto.Adapters.Postgres
end
