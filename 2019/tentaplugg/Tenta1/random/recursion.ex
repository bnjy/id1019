defmodule Recursion do

  def factorial(0), do: 1
  def factorial(x) do
    x * factorial(x-1)
  end

  def factorial_acc(x), do: factorial_acc(x, 1)
  def factorial_acc(0, acc), do: acc
  def factorial_acc(x, acc) do
    factorial_acc(x-1, x*acc)
  end

  def len(list) do len(list, 0) end
  def len([], acc), do: acc
  def len([_head | tail], acc) do
    len(tail, acc+1)
  end

  def double([], sofar), do: sofar
  def double(list), do: double(list, [])
  def double([head | tail], sofar) do
    [head*2 | double(tail, sofar)]
  end

  def even([], list), do: list
  def even(list), do: even(list,[])
  def even([head|tail], sofar) do
    cond do
    rem(head,2) == 0 ->
      [head | even(tail, sofar)]

    rem(head,2) == 1 ->
      even(tail, sofar)

    end
  end

end
