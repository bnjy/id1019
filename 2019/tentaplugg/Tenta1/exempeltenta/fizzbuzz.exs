defmodule FizzBuzz do

  def fizzbuzz(max, max, _, _), do: []
  def fizzbuzz(n, max, 3, 5) do [:fizzbuzz] ++  fizzbuzz(n+1, max, 1, 1) end
  def fizzbuzz(n, max, 3, c2) do [:fizz] ++     fizzbuzz(n+1, max, 1, c2+1) end
  def fizzbuzz(n, max, c1, 5) do [:buzz] ++     fizzbuzz(n+1, max, c1+1, 1) end
  def fizzbuzz(n, max, c1, c2) do [n] ++        fizzbuzz(n+1, max, c1+1, c2+1) end

end
