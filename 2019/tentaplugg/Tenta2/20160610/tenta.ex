defmodule Tenta do

  def once_test do once([10,11,10]) end

  def once([]) do {0,0} end
  def once([head | tail]) do
    {sum, length} = once(tail)
    {sum+head, length+1}
  end

  def eval_test do eval([5, '+', 2, '-', 3, '+', 10]) end
  def eval([]) do 0 end
  def eval([head, '+' | tail]) do head + eval(tail) end
  def eval([head, '-' | tail]) do head - eval(tail) end
  def eval([x]) do x end


  def eval2_test do eval2([5, '+', 2, '-', 3, '+', 10]) end
  def eval2([]) do 0 end
  def eval2([head | tail]) do eval2(tail, head) end

  def eval2([], sum) do sum end;
  def eval2(['+', head2 | tail], sum) do eval2(tail, sum + head2) end
  def eval2(['-', head2 | tail], sum) do eval2(tail, sum - head2) end


  def isomorfic_test do
    isomorfic({:node, 1, nil, nil}, {:node, 2, nil, nil})
  end
  def isomorfic(:nil, :nil) do true end
  def isomorfic({:node, _, left1, right1}, {:node, _, left2, right2}) do
    case isomorfic(left1, left2) do
      true -> isomorfic(right1, right2)
      false -> false
    end
  end

  def mirror_test do mirror({:node, 1, {:node, 2, :nil, :nil}, {:node, 3, :nil, :nil}}) end
  def mirror(:nil) do :nil end
  def mirror({:node, value, left, right}) do
    {:node, value, mirror(right), mirror(left)}
  end
  
end
