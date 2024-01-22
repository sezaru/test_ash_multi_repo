defmodule MultiRepo.Repo do
  use AshPostgres.Repo, otp_app: :multi_repo
end
