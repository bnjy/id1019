defmodule Heap do

  @type headp :: {:heap, integer(), heap(), heap()} | nil

  def new(), do: nil

  def add(nil, value), do: {:heap, value, nil, nil}

  def add({:heap, k, hLeft, hRight}, value) when k > value do
    {:heap, k, add(hRight, value), hLeft}
  end

end
