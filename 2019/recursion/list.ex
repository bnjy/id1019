defmodule Listpr do

  def drp([head | tail]) do
    tail
  end

  def tak([head | tail]) do
    head
  end

  def append(list1, list2) do
    list1 ++ list2
  end

  def rev([]) do [] end
  def rev([head | tail]) do
    rev(tail) ++ [head]
  end

end
