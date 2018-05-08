defmodule AnimalsTest do
  use ExUnit.Case
  # doctest Animals

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "randomise" do
    zoo = Animals.create_zoo
    assert zoo != Animals.randomise(zoo)
  end

  test "randomise_2" do
    zoo = Animals.create_zoo
    refute zoo == Animals.randomise(zoo)
  end

end
