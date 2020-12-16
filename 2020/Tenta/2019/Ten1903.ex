defmodule Ten do

  def decode([]) do [] end
  def decode([{var, 0} | tail]) do decode(tail) end
  def decode([{var, n} | tail]) do [var | decode([{var, n-1} | tail]) ] end

  def zip([], []) do [] end
  def zip([h1 | t1], [h2 | t2]) do [{h1, h2} | zip(t1, t2)] end

  def eval({:add, x, y}) do eval(x) + eval(y) end
  def eval({:mul, x, y}) do eval(x) * eval(y) end
  def eval({:neg, x}) do - eval(x) end
  def eval(expr) do expr end

  # @spec tree() :: :nil | {:node, any(), tree(), tree()}
  def balance(:nil) do {0,0} end
  def balance({:node, _, left, right}) do
    {depthLeft, imbalLeft} = balance(left)
    {depthRight, imbalRight} = balance(right)
    depth =
  end

  def gray(0) do [[]] end
  def gray(n) do
    g1 = gray(n-1)
    r1 = reverse(g1)
    append(update(g1, 0), update(r1, 1))
  end

  def update([], _) do end
  def update([head | tail], bit) do
    [[bit, head] | update(tail, bit)]
  end

end
