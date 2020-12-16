defmodule ListOper do

  def nth(n, []) do [] end
  def nth(0, [head | _tail]) do
    head
  end

  def nth(n, [head | tail]) do
    nth(n-1, tail)
  end

  def len([]), do: 0
  def len([head | tail]) do
    1 + len(tail)
  end

  def sum([]), do: 0
  def sum([head | tail]) do
    head + sum(tail)
  end

  def duplicate([]), do: []
  def duplicate([head | tail]) do
    [head*2 | duplicate(tail)]
  end

  def add(x, []), do: [x]
  def add(x, [x | tail]) do [x | tail] end
  def add(x, [head | tail]) do [head | add(x, tail)] end

  def remove(x, [x]), do: []
  def remove(x, [x | tail]), do: tail
  def remove(x, [head | tail]) do
    [head | remove(x, tail)]
  end

  def unique([]), do: []
  def unique([x | tail]) do
    [x | unique(remove(x, tail))]
  end

  def reverse([]), do: []
  def reverse([head | tail]) do
    reverse(tail) ++ [head]
  end

  def reverse_better(list) do reverse_better(list, []) end
  def reverse_better([], rev) do rev end
  def reverse_better([head | tail], rev) do
    reverse_better(tail, [head | rev])
  end

end
