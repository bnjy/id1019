defmodule Tenta do

  @type tree :: {:node, integer(), tree(), tree()} | nil

  def test do
    sum({:node, 1, {:node, 2, {:node, 4, {:node, 7, :nil, :nil}, {:node, 5, :nil, :nil}}, :nil}, {:node, 3, {:node, 6, :nil, :nil}, :nil}})
  end

  def sum(nil) do 0 end
  def sum({:node, value, left, right}) do
    sum({:node, value, left, right}, 0)
  end
  def sum({:node, value, left, right}, sum) do
    sum = sum()
  end

end
