defmodule Ten do

  def freq(key, []) do [{key, 1}] end
  def freq(key, [{key, val} | rest]) do [{key, val+1} | freq(key, rest)] end
  def freq(key, [{not_key, val} | rest]) do

end
