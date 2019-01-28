defmodule Sorting do

  def isort(list) do isort(list, []) end

  def isort([], sorted) do sorted end
  def isort([head | tail], sorted) do
    isort(tail, insert(head, sorted))
  end

  def insert(x, []) do [x] end
  def insert(x, [head | tail]) do
    case x < head do
    true -> [x, head | tail]
    false -> [head | insert(x, tail)]
    end
  end

end
