defmodule Ten do

# [:a, :b, :c, :d, :e]
  def toggle([]) do [] end
  def toggle([last_odd]) do [last_odd] end
  def toggle([first, second | rest]) do [second, first | toggle(rest)] end

  # [1, [2], [[3], [[4,5,[6,[[6]]]]]]]
  def flatten([]) do [] end
  def flatten([head | tail]) do flatten(head) ++ flatten(tail) end
  def flatten(elem) do [elem] end

  def pushList(stack, elem) do [elem | stack] end
  def popList([]) do :no end
  def popList([elem | rest]) do {:ok, elem, rest} end

  def push(:nil, val) do {:stack, val, :nil} end
  def push({:stack, val, next}, new) do {:stack, val, push(next, new)} end

  def pop(:nil) do :no end
  def pop({:stack, val, next}) do pop(next, push(:nil, val)) end
  def pop({:stack, val, :nil}, stack) do {:ok, val, stack} end
  def pop({:stack, val, next}, {:stack, val2, next2}) do
    pop(next, {:stack, val2, push(:nil, val)})
  end
  def pop({:stack, val, next}, {:stack, val2, :nil}) do
    pop(next, {:stack, val2, push(:nil, val)})
  end




  def index(list) do index(list, 0) end
  def index([], res) do res end
  def index([head | tail], res) when head > res do
    index(tail, res+1) end
  def index([head | tail], res) do
    index(tail, res)
  end
end
