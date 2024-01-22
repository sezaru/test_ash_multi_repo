defmodule MultiRepo.Api.Resource2 do
  @moduledoc false

  use Ash.Resource,
    data_layer: AshPostgres.DataLayer

  attributes do
    uuid_primary_key :id

    timestamps(private?: false)
  end

  postgres do
    table "resources_2"

    repo MultiRepo.Repo
  end
end
