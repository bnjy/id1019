defmodule Dubjam do


  def dubjam([]), do: []
  def dubjam([head|tail]) do
    cond do
      rem(head,2) == 0 ->
        [head*2 | dubjam(tail)]

      rem(head,2) == 1 ->
        [head| dubjam(tail)]
    end

  end

end
