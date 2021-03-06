# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config


# General application configuration
config :oauth2Google,
  ecto_repos: [Oauth2Google.Repo]

# Configures the endpoint
config :oauth2Google, Oauth2GoogleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WfxCiBYSmZY+jsogzccoJFTRQcqxG+Gb+4/QNINyjrQIBcyFCHmpIdatugWv2Jau",
  render_errors: [view: Oauth2GoogleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Oauth2Google.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


    config :oauth2Google, GitHub,
      client_id: System.get_env("GITHUB_CLIENT_ID"),
      client_secret: System.get_env("GITHUB_CLIENT_SECRET"),
      redirect_uri: System.get_env("GITHUB_REDIRECT_URI")

    config :oauth2Google, Google,
        client_id: System.get_env("GOOGLE_CLIENT_ID"),
        client_secret: System.get_env("GOOGLE_CLIENT_SECRET"),
        redirect_uri: System.get_env("GOOGLE_REDIRECT_URI")

    config :oauth2Google, Facebook,
          client_id: System.get_env("FACEBOOK_CLIENT_ID"),
          client_secret: System.get_env("FACEBOOK_CLIENT_SECRET"),
          redirect_uri: System.get_env("FACEBOOK_REDIRECT_URI"),
          default_scope: "email,public_profile",
           profile_fields: "id,email,gender,link,locale,name,timezone,updated_time,verified"


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
