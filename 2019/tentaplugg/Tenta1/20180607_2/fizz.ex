defmodule Fizz do

  def fizzbuzz(n), do: fizzbuzz(1,n+1,1,1)

  def fizzbuzz(max, max,_,_),     do: []
  def fizzbuzz(n, max, 3, 5),     do: [:fizzbuzz] ++ fizzbuzz(n+1, max, 1, 1)
  def fizzbuzz(n, max, 3, y),     do: [:fizz] ++ fizzbuzz(n+1, max, 1, y+1)
  def fizzbuzz(n, max, x, 5),     do: [:buzz] ++ fizzbuzz(n+1, max, x+1, 1)
  def fizzbuzz(n, max, x, y),     do: [n] ++ fizzbuzz(n+1, max, x+1, y+1)

end
