defmodule Recursion do

  def reduce([]), do: []
  def reduce([x, x | tail]) do
      [x | reduce(tail)]
  end
  def reduce([head | tail]) do
    [head | reduce(tail)]
  end

end
