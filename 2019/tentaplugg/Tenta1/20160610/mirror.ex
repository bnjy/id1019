defmodule Mirror do

  @type tree :: {:tree, value, left, right} | :nil

  def mirror({:tree, value, :nil, :nil}) do
    {:tree, value, :nil, :nil}
  end

  def mirror({:tree, value, left, :nil})
    {:tree, value, :nil, mirror(left)}
  end

  def mirror({:tree, value, :nil, right})
    {:tree, value, mirror(right), :nil}
  end

  def mirror({:tree, value, left, right})
    {:tree, value, mirror(right), mirror(left)}
  end

end
