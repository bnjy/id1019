defmodule Tree do

  @type tree :: {:node, integer(), tree(), tree()} | nil

  def min(tree), do: min(tree, :inf)
  def min(nil, minsta), do: minsta
  def min({:node, value, left, right}, minsta) when value < minsta do


  end

end
