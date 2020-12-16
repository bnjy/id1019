defmodule Heap do

  @type heap() :: {:heap, integer(), heap(), heap()} | nil
  @spec new() :: heap()

  def new(), do: nil

  def add(nil, value), do: {:heap, value, nil, nil}

  def add({:heap, k, hLeft, hRight}, value) when k > value do
    {:heap, k, add(hRight, value), hleft}
  end

  def add({:heap, k, hLeft, hRight}, value) do
    {:heap, k, add(hRight, value), hleft)}
  end

  def pop(nil), do: :fail

  def pop({:heap, k, left, nil}) do
    {:ok, k, left}
  end

  def pop({:heap, k, left, nil}) do
    {:ok, k, left}
  end

end
