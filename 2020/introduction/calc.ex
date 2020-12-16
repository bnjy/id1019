defmodule Calc do

  def eval({:int, n}) do n end
  def eval({:add, a, b}) do eval(a) + eval(b) end
  def eval({:sub, a, b}) do eval(a) - eval(b) end
  def eval({:mul, a, b}) do eval(a) * eval(b) end
  def eval({:var, name}, bindings) do lookup(name, bindings) end

# > Calc.eval({:var, :x}, [{:bind, :x, 5}])
# 5

  def lookup(name, [{:bind, name, value} | _]) do eval({:int, value}) end
  def lookup(name, [_ | rest]) do lookup(name, rest) end

end
