defmodule Tenta do

  def transf_test do transf(5, 2, [2,5,4,3,5]) end

  def transf(x, y, []) do [] end
  def transf(x, y, [x | tail]) do transf(x, y, tail) end
  def transf(x, y, [head | tail]) do [head*y | transf(x, y, tail)] end
  #
  # def sum(list) do sum(list, 0) end
  # def sum([], sum) do sum end
  # def sum([head | tail], sum) do sum(tail, head+sum) end
  #
  # @type tree :: {:node, integer(), tree(), tree()} | nil
  #
  # def min(tree) do min(tree, :inf) end
  # def min(:nil, minsta) do minsta end
  # def min({:node, value, left, right}, minsta) do

end
