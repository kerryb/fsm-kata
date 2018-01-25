defmodule FSM.StateTest do
  use ExUnit.Case
  alias FSM.State
  doctest State

  describe "FSM.State.initial/0" do
    test "is :q1", do: assert(State.initial() == :q1)
  end

  describe "FSM.State.transition/2" do
    [
      {0, :q1, :q1},
      {1, :q1, :q2},
      {0, :q2, :q3},
      {1, :q2, :q2},
      {0, :q3, :q2},
      {1, :q3, :q2}
    ]
    |> Enum.each(fn {input, current, new} ->
      @input input
      @current current
      @new new

      test "moves from #{@current} to #{@new} when given #{@input}" do
        assert State.transition(@input, @current) == @new
      end
    end)
  end

  describe "FSM.State.accept?/1" do
    test "is true for :q2", do: assert State.accept? :q2

    test "is false otherwise", do: refute State.accept? :q1
  end
end
