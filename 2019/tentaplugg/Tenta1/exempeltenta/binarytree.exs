defmodule BinaryTree do

  @type tree :: {:node, integer(), tree(), tree()} | nil

  def test do
    sum({:node, 8, :nil, {:node, 7, :nil, {:node, 10, {:node, 10, {:node, 14, :nil, :nil}, :nil}, :nil}}})
  end

  def sum(:nil), do: 0
  def sum({:node, value, left, right}) do
    value + sum(left) + sum(right)
  end

end
