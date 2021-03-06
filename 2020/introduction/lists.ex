defmodule Lists do

  def tak([]) do [] end
  def tak([head | _]) do head end

  def drp([]) do [] end
  def drp([head | tail]) do tail end

  def len([]) do 0 end
  def len([head | tail]) do len(tail) + 1 end

  def sum([]) do 0 end
  def sum([head | tail]) do sum(tail) + head end

  def duplicate([]) do [] end
  def duplicate ([head | tail]) do [head*2 | duplicate(tail)] end

  def add(x, []) do [x] end
  def add(x, [x | tail]) do [x | tail] end
  def add(x, [head | tail]) do [head | add(x, tail)] end

  def remove(x, []) do [] end
  def remove(x, [x | tail]) do remove(x, tail) end
  def remove(x, [head | tail]) do [head | remove(x, tail)] end

  def unique([]) do [] end
  def unique([x | tail]) do [x | unique(remove(x, tail))] end

  def append([], []) do [] end
  def append(list1, list2) do list1++list2 end

end
