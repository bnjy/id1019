defmodule Tenta do

  def reduce_test do reduce([1,2,2,3,1,2,4,4,4,2,3,3,1]) end

  def reduce([]) do [] end
  def reduce([x, x | tail]) do reduce([x | tail]) end
  def reduce([head | tail]) do [head | reduce(tail)] end



end
