defmodule ListOper do

  def nth(n, []) do [] end
  def nth(0, [head | tail]) do head end
  def nth(n, [head | tail]) do nth(n-1, tail) end

  def len([]) do 0 end
  def len([head | tail]) do len(tail) + 1 end

  def sum([]) do 0 end
  def sum([head | tail]) do sum(tail) + head end

  def duplicate([]) do [] end
  def duplicate([head | tail]) do [head*2 | duplicate(tail)] end

  def add(x, []) do [x] end
  def add(x, [x | tail]) do [x | tail] end
  def add(x, [head | tail]) do [head | add(x, tail)] end

  def remove(x, [x]) do [] end
  def remove(x, [x | tail]) do [tail] end
  def remove(x, [head | tail]) do [head | remove(x, tail)] end

  def unique()


end
