defmodule Sort do

  def msort([]), do: []
  def msort(list) do
    {l1, l2} = Enum.split(list,2)
    merge(msort(l1), msort(l2))
  end

  def merge([], y), do: y
  def merge(x, []), do: x

  def merge([head1 | tail1] = left, [head2 | tail2] = right) do
    cond do
      head1 < head2 ->
        [head1 | merge(tail1, right)]
      true ->
        [head2 | merge(tail2, left)]
    end
  end
end
