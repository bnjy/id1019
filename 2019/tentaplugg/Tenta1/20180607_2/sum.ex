defmodule Sum do
@type tree :: {:node, integer(), tree(), tree()} | nil

  def sum(nil), do: 0

  def sum({:node, value, left, right}) do
    value + sum(left) + sum(right)
  end

end
