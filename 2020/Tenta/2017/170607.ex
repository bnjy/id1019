defmodule Ten do

  def transf(_x, _y, []) do [] end
  def transf(x, y, [x | rest]) do transf(x,y,rest) end
  def transf(x, y, [head | rest]) do [head*y | transf(x,y,rest)] end

  def sum([]) do 0 end
  def sum(list) do sum(list, 0) end
  def sum([], tot) do tot end
  def sum([head | tail], tot) do sum(tail, tot+head) end

# {:node, 4, {:node, 5, {:node, 2, :nil, :nil}, {:node, 13, :nil, :nil}}, {:node, 9, :nil, {:node, 20, :nil, :nil}}}
  def min(tree) do minn(tree, :inf) end
  def minn(:nil, minimum) do minimum end
  def minn({:node, val, left, right}, minimum) do
    cond do
      val < minimum ->
        minn(left, minn(right, val))
    true ->
      minn(left, minn(right, minimum))
    end
  end

end
