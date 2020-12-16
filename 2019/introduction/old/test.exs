defmodule Test do
# Compute the double of a number.
  def double(n) do
    n*2
  end

  def fahrToCel(f) do
    ((f-32)/1.8)
  end

  def recArea(a,b) do
    a*b
  end

  def squArea(c,d) do
    recArea(c,d)
  end

  def cirArea(r) do
    :math.pi() * :math.pow(r,2)
  end

end
