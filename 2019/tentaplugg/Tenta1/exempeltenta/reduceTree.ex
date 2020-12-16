defmodule ReduceTree do

  @type tree :: {:node, any(), tree(), tree()} | nil

  def reduce(nil, acc, _), do: acc
  def reduce({:node, value, left, right}, acc, op) do

  end

end
