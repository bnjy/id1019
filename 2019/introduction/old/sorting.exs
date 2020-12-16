defmodule Sorting do

  def insert(elem, []), do: [elem]
  def insert(elem, [head | tail]) do
    cond do
      elem > head ->
      [head | insert(elem, tail)]

      elem <= head ->
        [elem] ++ [head | tail]
    end
  end

  def isort(list), do: isort(list, [])
  def isort([], sorted), do: sorted
  def isort([head | tail], sofar) do
    isort(tail, insert(head, sofar))
  end

  # def isort(list) do
  #   isort(list, [])
  # end
  # def isort(list, sofar) do
  #   case list do
  #     [] ->
  #       sofar
  #     [head | tail] ->
  #       isort(tail, insert(head, sofar))
  #   end
  # end

  

end
