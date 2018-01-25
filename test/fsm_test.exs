defmodule FSMTest do
  use ExUnit.Case
  doctest FSM

  test "works as expected for the given example" do
    refute FSM.read_commands(~w(1, 0, 0, 1, 0))
  end
end
