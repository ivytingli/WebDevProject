# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
<<<<<<< HEAD
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure your application as:
#
#     config :manga, key: :value
#
# and access this configuration in your application as:
#
#     Application.get_env(:manga, :key)
#
# You can also configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
=======
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mangalike,
  ecto_repos: [Mangalike.Repo]

# Configures the endpoint
config :mangalike, MangalikeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Lb5qcGmgIHmSYb7epKFAXQJCHXTUPneT0XpoAVcnJ2tY8+E0YhNN/Eaza1fzmpw2",
  render_errors: [view: MangalikeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mangalike.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :mangalike, Mangalike.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "mangalike",
  password: "ob0ooG3ahr",
  database: "mangalike_dev",
  hostname: "localhost",
  pool_size: 10
>>>>>>> 0bc18efff172920470b20d390429ff3894d9a45b
