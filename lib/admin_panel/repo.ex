defmodule AdminPanel.Repo do
  use Ecto.Repo,
    otp_app: :admin_panel,
    adapter: Ecto.Adapters.Postgres
end
