defmodule UserJourneyTest do
  use ExUnit.Case
  doctest UserJourney

  test "greets the world" do
    assert UserJourney.hello() == :world
  end
end
