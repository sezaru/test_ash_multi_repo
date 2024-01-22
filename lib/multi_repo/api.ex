defmodule MultiRepo.Api do
  @moduledoc false

  use Ash.Api

  resources do
    resource MultiRepo.Api.Resource1
    resource MultiRepo.Api.Resource2
    resource MultiRepo.Api.Resource3
  end
end
