defmodule Recursion do

  def product(0, _n) do 0 end
  def product(_m, 0) do 0 end
  def product(m, n) do
    product(m-1, n) + n
  end

  def exp(x, 0) do 1 end
  def exp(x, n) do
    exp(x, n-1) * x
  end

  

end
