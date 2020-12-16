defmodule Ten do

  def drop([]) do [] end
  def drop(list, n) do drop(list, n, 1) end
  def drop([], _, _) do [] end
  def drop([_head | tail], n, n) do
    drop(tail, n, 1)
  end
  def drop([head | tail], n, x) do
    [head | drop(tail, n, x+1)]
  end

  def rotate([], _x) do [] end
  def rotate(list, n) do rotate(list, n, []) end
  def rotate(list, 0, fliped) do
    append(list, (reverse(fliped)))
  end
  def rotate([head | tail], n, list) do
    rotate(tail, n-1, [head | list])
  end

  def nth(1, {:leaf, val}) do {:found, val} end
  def nth(n, {:leaf, _}) do {:cont, n-1} end
  def nth(n, {:node, left, right}) do
    case nth(n, left) do
      {:found, val} ->
        {:found, val}
      {:cont, k} ->
        nth(k, right)
    end
  end

  def hp35(seq) do hp35(seq, []) end
  def hp35([], [result | _rest]) do result end
  def hp35([:add | tail], [first, second | rest]) do hp35(tail, [first+second | rest]) end
  def hp35([:sub | tail], [first, second | rest]) do hp35(tail, [second-first | rest]) end
  def hp35([head | tail], list) do hp35(tail, [head | tail]) end

end
