defmodule Dubeve do

  def dubeve([], done), do: done
  def dubeve([head | tail], sofar) do
    cond do
      rem(head, 2) == 0 ->
        dubeve(tail, sofar ++ [head*2])

      rem(head, 2) == 1 ->
        dubeve(tail, sofar ++ [head])
    end
  end
end
