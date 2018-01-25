defmodule FSMTest do
  use ExUnit.Case
  doctest FSM

  test "greets the world" do
    assert FSM.hello() == :world
  end
end
