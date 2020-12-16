defmodule Recursion do

  def prod(m, n) do
    case n do
      0 -> 0
      _ -> m*n
    end
  end

  def power(m, 0) do 1 end
  def power(m, x) do
    power(m, x-1) * m
  end

  def binary(0), do: []
  def binary(m), do: binary(m-1) ++ [0]

  def fib(0) do 0 end
  def fib(1) do 1 end
  def fib(n) do
    fib(n-1) + fib(n-2)
  end

end
