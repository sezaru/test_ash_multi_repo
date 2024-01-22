defmodule MultiRepo.Api.Resource3 do
  @moduledoc false

  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  attributes do
    uuid_primary_key :id

    timestamps(private?: false)
  end

  postgres do
    table "resources_3"

    repo MultiRepo.Repo2
  end
end
