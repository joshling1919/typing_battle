defmodule TypingBattle.Repo do
  use Ecto.Repo,
    otp_app: :typing_battle,
    adapter: Ecto.Adapters.Postgres
end
