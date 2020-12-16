defmodule Ten do

# {:node, 4, {:node, 5, {:node, 2, :nil, :nil}, {:node, 13, :nil, :nil}}, {:node, 9, :nil, {:node, 20, :nil, :nil}}}
  def sum(:nil) do 0 end
  def sum({:node, val, left, right}) do
    l_sum = sum(left)
    r_sum = sum(right)
    val + l_sum + r_sum
  end

  def reverse(list) do reverse(list, []) end
  def reverse([], list) do list end
  def reverse([head | tail], list) do
    reverse(tail, [head | list])
  end

  def append(list1, list2) do
    reverse(reverse(list1), list2)
  end

  #@type tree :: {:node, val, left, right} | :nil
  # Spegla ett träd
  # {:node, 5, {:node, 4, :nil, :nil}, {:node, 6, :nil, :nil}}
  def mirror(:nil) do :nil end
  def mirror({:node, val, left, right}) do
    {:node, val, mirror(right), mirror(left)}
  end

  def pop() do end


end
