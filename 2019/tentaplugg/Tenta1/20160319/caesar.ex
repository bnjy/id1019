defmodule Caesar do

  def encode([]), do: []
  def encode([32 | tail]), do: encode([32|encode(tail)])
  def encode([head | tail]) when head < 100 do
    [head - 3 + 26 | encode(tail)]
  end
  def encode([head | tail]) do
    [head - 3 | tail]
  end
end
