use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :oauth2Google, Oauth2GoogleWeb.Endpoint,
  secret_key_base: "1DGUyXr3lXaoJB8fB6fg4BD7Y6O7Q2pQkQhPeLahI+O+4y7YmMrryz23RtfTCNn/"

# Configure your database
config :oauth2Google, Oauth2Google.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "oauth2google_prod",
  pool_size: 15
