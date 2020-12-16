defmodule Queue do

  @type queue :: {:queue, list(), list()} | nil

  def new(), do: {:queue, [], []}

  def enqueue(x, {:queue, list1, list2}), do: {:queue, list1, [x | list2]}
  def dequeue({:queue, [head|tail], list2}), do: {:ok, head, {:queue, tail, list2}}

  def dequeue({:queue, [], []}), do: :fail
  def dequeue({:queue, [head1| tail1], list2}), do: {:ok, head1, {:queue, tail1, list2}}
  def dequeue({:queue, [], list}) do
    [head | tail] = Enum.reverse(list)
    {:ok, head, {:queue, tail, []}}
  end

end
