defmodule Mirror do

@type tree :: {:node, integer(), tree(), tree()} | nil

def test do
  mirror({:node, 1, {:node, 2, {:node, 4, {:node, 7, :nil, :nil}, {:node, 5, :nil, :nil}}, :nil}, {:node, 3, {:node, 6, :nil, :nil}, :nil}})
end

  def mirror({:node, _value, nil, nil}), do: {:node, _value, nil, nil}
  def mirror({:node, _value, nil, right}) do
    {:node, _value, mirror(right), nil}
  end
  def mirror({:node, _value, left, nil}) do
    {:node, _value, nil, mirror(left)}
  end
  def mirror({:node, _value, left, right}) do
    {:node, _value, mirror(right), mirror(left)}
  end

end
