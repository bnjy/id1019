defmodule Heap do

  @type heap :: {:heap, value, left, right} | nil

  def add(nil, value), do: {:heap, value, nil, nil}
  def add({:heap, value, left, right}, newValue) when value > newValue do
    {:heap, value, add(right, newValue), left}
  end
  def add({:heap, value, left, right}, newValue) do
    {:heap, newValue, add(right, value), left}

end
