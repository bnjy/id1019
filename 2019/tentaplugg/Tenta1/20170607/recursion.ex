defmodule Recursion do

  def transf(x, y, []), do: []
  def transf(x,y, [x | tail]), do: transf(x,y,tail)
  def transf(x,y,[head | tail]), do: [head*y|transf(x,y,tail)]

  def sum_naive([]), do: 0
  def sum_naive([head|tail]) do
    head + sum(tail)
  end

  def sum(list), do: sum(list, 0)
  def sum([], acc), do: acc
  def sum([head|tail], acc) do
    sum(tail, acc+head)
  end

  @type tree :: {:tree, integer(), tree(), tree()} | nil

  def min(tree), do: min(tree, :inf)
  def min(nil, atom), do: atom
  def min({:tree, value, left, right}, atom) do
    case value < atom do
      min(left, min(right,value))
      true ->
        min(left, min(right,atom))
    end
  end

end
