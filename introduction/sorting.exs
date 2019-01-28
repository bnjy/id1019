defmodule Sorting do
  def insert(elem, []) do [elem] end

  def insert(elem, [head | tail]) when elem > head do
    [head | insert(elem, tail)]
  end

  def insert(elem, larger) do
    [elem | larger]
  end

end
