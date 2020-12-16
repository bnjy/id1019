defmodule Btree do

  @type tree :: {:node, integer(), tree(), tree()} | nil

  def test do
    sum({:node, 5, :nil, {:node, 100, {:node, 7, :nil, :nil}, {:node, 8, :nil, :nil}}})
  end

  def sum({:node, value, nil, nil}), do: value
  def sum({:node, value, left, nil}), do: value + sum(left)
  def sum({:node, value, nil, right}), do: value + sum(right)
  def sum({:node, value, left, right}) do
    value + sum(left) + sum(right)
  end

end
