# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :yii,
  ecto_repos: [Yii.Repo]

# Configures the endpoint
config :yii, Yii.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TBE+PQpa6zTtgzgEvYvW1T2QvpMWzmGZaJTkI0ZjBWZpJiZMQTako0qNgJ27Lr0R",
  render_errors: [view: Yii.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Yii.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :xain, :after_callback, {Phoenix.HTML, :raw}

# ExAdmin
config :ex_admin,
  repo: Yii.Repo,
  module: Yii,
  modules: [
    Yii.ExAdmin.Dashboard,
    Yii.ExAdmin.Post,
    Yii.ExAdmin.Category,
    Yii.ExAdmin.Tag,
    Yii.ExAdmin.Sku,
    Yii.ExAdmin.Product,
    Yii.ExAdmin.User
  ]

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Yii.User,
  repo: Yii.Repo,
  module: Yii,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :invitable, :registerable]

config :coherence, Yii.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
