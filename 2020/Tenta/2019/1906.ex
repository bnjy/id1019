defmodule Ten do
  def drop(list, n) do drop(list, n, n) end
  def drop([], _n, _c) do [] end
  def drop([_head | tail], n, 1) do drop(tail, n, n) end
  def drop([head | tail], n, c) do [head | drop(tail, n, c-1)] end

  def decode([]) do [] end
  def decode([{elem, 0} | rest]) do decode(rest) end
  def decode([{elem, n} | rest]) do [elem | decode( [elem, n-1 | rest] )] end

  def zip([], []) do [] end
  def zip( [head1 | tail1], [head2 | tail2] ) do [{head1, head2} | zip(tail1, tail2)] end

  def pascal(1) do [1] end
  def pascal(n) do [1 | next(pascal(n-1))] end

  def next([1]) do [1] end
  def next([a | rest]) do
    [b|_] = rest
    [a+b | next(rest)]
  end

  def hp35_fel([]) do 0 end
  def hp35_fel([:add | tail]) do
    +hp35(tail)
  end
  def hp35_fel([:sub | tail]) do
    -hp35(tail)
  end
  def hp35_fel([head | tail]) do
    head + hp35(tail)
  end

# hp35([3, 4, :add, 2, :sub])
# -> 3 + 4 + +2 + - 0 = 9

  def hp35([]), do: 0
  def hp35(seq), do: hp35(seq, [])
  def hp35([], [res | _]), do: res
  def hp35([:add | tail], [a, b | stack]), do: hp35(tail, [b+a | stack])
  def hp35([a, :sub | tail], [res | stack]), do: hp35(tail, [res-a | stack])
  def hp35([head | tail], stack), do: hp35(tail, [head | stack])


# hp35([3, 4, :add, 2, :sub])
# -> hp35([4, :add, 2, :sub], [3 | []])
# -> hp35([:add, 2, :sub], [4 | [3]])
# -> hp35([2, :sub], [3+4 | []])
# -> hp35([2, :sub], [3+4 | []])

end
