defmodule FSM do
  @moduledoc """
  https://www.codewars.com/kata/design-a-simple-automaton-finite-state-machine
  """

  alias FSM.State

  def read_commands(commands) do
    commands
    |> Enum.reduce(State.initial(), &State.transition/2)
    |> State.accept?()
  end
end
