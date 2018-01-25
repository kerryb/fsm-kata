defmodule FSM.State do
  def initial, do: nil

  def transition(input, state), do: state

  def accept?(state), do: false
end
