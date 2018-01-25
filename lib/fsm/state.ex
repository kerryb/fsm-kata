defmodule FSM.State do
  def initial, do: :q1

  def transition(1, :q1), do: :q2
  def transition(0, :q2), do: :q3
  def transition(_, :q3), do: :q2
  def transition(_, state), do: state

  def accept?(state), do: false
end
