defmodule Freq do

  @type freq :: [{atom(), integer()}]

  def test do
    freq(:a,[{:a, 0},{:d, 0},{:c, 0},{:a, 0},{:b, 0},{:a, 0}])
  end

  def test1 do
    fraq([:a,:a,:a])
  end

  def freq(_key, []), do: []
  def freq(key, [{key, n} | tail]) do
    [{key, n+1} | freq(key, tail)]
  end
  def freq(key, [{x, n} | tail]) do
    [{x, n} | freq(key, tail)]
  end

  def fraq([]), do: []
  def fraq([k | tail]) do
    freq(k, fraq(tail))
  end

end
