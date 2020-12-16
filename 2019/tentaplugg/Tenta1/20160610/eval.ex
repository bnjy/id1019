defmodule Eval do

  def eval([]), do: 0
  def eval([head | tail]), do: eval(tail, head)

  def eval([], sum), do: sum
  def eval(['+', next | tail], sum), do: eval(tail, sum+next)
  def eval(['-', next | tail], sum), do: eval(tail, sum-next)

  def eval_done([]), do: 0
  def eval_done([head | tail]), do: eval_done(tail, head)

  def eval_done([], sum), do: sum
  def eval_done(['+', next | tail], sum), do: eval_done(tail, sum+next)
  def eval_done(['-', next | tail], sum), do: eval_done(tail, sum-next)

end
