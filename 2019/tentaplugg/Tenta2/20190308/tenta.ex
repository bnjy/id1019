defmodule Tenta do

  def decode_test do decode([{:a, 2}, {:c, 1}, {:b, 3}, {:a, 1}]) end
  def decode([]) do [] end
  def decode([{c, 0} | tail]) do decode(tail) end
  def decode([{c, n} | tail]) do [c | decode([{c, n-1} | tail])] end

  def zip_test do zip([:a,:b,:c], [1,2,3]) end

  def zip([],[]) do [] end
  def zip([head1 | tail1],[head2 | tail2]) do
    [{head1, head2} | zip(tail1,tail2)]
  end

  # def balance_test, do: balance({:node, 1, {:node, 1, {:node, 1, :nil, :nil}, :nil}, {:node, 1, :nil, nil}})

  def eval_test do eval({:add, {:mul, 2, 3}, {:neg, 2}}) end

  def eval({:mul, x, y}) do eval(x) * eval(y) end
  def eval({:add, x, y,}) do eval(x) + eval(y) end
  def eval({:neg, x}) do -eval(x) end
  def eval(x) do x end

end
