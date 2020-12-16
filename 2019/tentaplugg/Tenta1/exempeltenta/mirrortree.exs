defmodule MirrorTree do

  def test do
    mirror({:node, 1, {:node, 2, {:node, 4, {:node, 7, :nil, :nil}, {:node, 5, :nil, :nil}}, :nil}, {:node, 3, {:node, 6, :nil, :nil}, :nil}})
  end

  def mirror({:node, value, :nil, :nil}) do
    {:node, value, :nil, :nil}
  end

  def mirror({:node, value, left, :nil}) do
    {:node, value, :nil, mirror(left)}
  end

  def mirror({:node, value, :nil, right}) do
    {:node, value, mirror(right), :nil}
  end

  def mirror({:node, value, left, right}) do
    {:node, value, mirror(right), mirror(left)}
  end

end
