# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :admin_panel,
  ecto_repos: [AdminPanel.Repo]

# Configures the endpoint
config :admin_panel, AdminPanelWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nfMdXrCSgCFrzl1DgbZkNm66p/wkIdPb4t0AbzeJO26GXWyJpil+eUS+IO4tTRj2",
  render_errors: [view: AdminPanelWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AdminPanel.PubSub,
  live_view: [signing_salt: "Oq0ldJTd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.

config :kaffy,
  otp_app: :admin_panel,
  ecto_repo: AdminPanel.Repo,
  router: AdminPanelWeb.Router,
  resources: &AdminPanel.Kaffy.Config.create_resources/1,
  extensions: [
    AdminPanel.Kaffy.Extension
  ]
import_config "#{Mix.env()}.exs"
