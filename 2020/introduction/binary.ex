defmodule Binary do

  def append([], []) do [] end
  def append(x, []) do x end
  def append([], y) do y end
  def append(x, y) do x++y end

  def to_binary(0) do [] end
  def to_binary(n) do
    append(to_binary(div(n, 2)), [rem(n, 2)])
  end

end
