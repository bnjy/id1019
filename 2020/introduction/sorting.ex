defmodule Sort do

  def insert(elem, []) do [elem] end
  def insert(elem, [head | tail]) do
    cond do
      elem > head -> [head | insert(elem, tail)]
      elem < head -> [elem | [head | tail]]
      elem = head -> [elem | [head | tail]]
    end
  end

  def insert_alt(elem, []) do [elem] end
  def insert_alt(elem, [head | tail]) when elem > head do
    [head | insert_alt(elem, tail)]
  end
  def insert_alt(elem, all_larger) do
    [elem | all_larger]
  end

  def isort(list) do isort(list, []) end
  def isort([], sorted) do sorted end
  def isort([head | tail], sorted) do
    isort(tail, insert(head, sorted))
  end

  def msort([]) do [] end
  def msort(list) do
    {left, right} = msplit(list, [], [])
    merge(msort(left), msort(right))
  end

  def merge([], list) do list end
  def merge(list, []) do list end
  def merge([head1 | rest1], [head2 | rest2]) do
      if head1 < head2 do
          [head1 | merge(rest1, [head2 | rest2])]
      else
          [head2 | merge([head1 | rest1], rest2)]
      end
  end

  def msplit([], left, right) do {left, right} end
  # Here we are putting the head at the other half, and shifting places of right and left.
  # This will lead to head gets put on different list each iteration
  def msplit([head | tail], left, right) do msplit(tail, [head | right], left) end


end
