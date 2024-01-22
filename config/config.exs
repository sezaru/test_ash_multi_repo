import Config

config :multi_repo, ecto_repos: [MultiRepo.Repo, MultiRepo.Repo2]

config :multi_repo, MultiRepo.Repo,
  database: "multi_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432"

config :multi_repo, MultiRepo.Repo2,
  database: "multi_repo_2",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432"

config :multi_repo, ash_apis: [MultiRepo.Api]
