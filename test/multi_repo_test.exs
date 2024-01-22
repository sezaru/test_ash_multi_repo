defmodule MultiRepoTest do
  use ExUnit.Case
  doctest MultiRepo

  test "greets the world" do
    assert MultiRepo.hello() == :world
  end
end
