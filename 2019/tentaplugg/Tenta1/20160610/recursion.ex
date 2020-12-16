defmodule Recursion do

  def once(list), do: once(list, 0, 0)
  def once([], sum, length), do: {sum, length}
  def once([head|tail], sum, length) do
    once(tail,head+sum,length+1)
  end


end
