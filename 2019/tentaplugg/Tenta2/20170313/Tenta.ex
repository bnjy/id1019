defmodule Tenta do

  def freq_test do
    freq(:a,[{:k, 0},{:d, 0},{:c, 0},{:a, 0},{:b, 0}])
  end

  def freq(key, []) do [{key, 1}] end
  def freq(key, [{key, n} | tail]) do [{key, n+1} | tail] end
  def freq(key, [{x, n} | tail]) do [{x, n} | freq(key, tail)] end

  {:queue, [1,2], [6,5,4,3]}

  def new do
    {:queue, [], []}
  end

  def enqueue(elem, {:queue, first, last}) do
    {:queue, first, [elem | last]}
  end

  def dequeue({:queue, [], []}) do :fail end

  def dequeue({:queue, [elem | rest], last}) do
    {:ok, elem, {:queue, rest, last}}
  end

  def dequeue({:queue, [], last}) do
    [elem | tail] = reverse(last)
    {:ok, elem, {:queue, tail, []}}
  end

end
