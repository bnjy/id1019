defmodule Calc do

  @type expr() :: {:int, integer()} | {:add, expr(), expr()} | {:sub, expr(), expr()}

  def test do
    eval({:min, {:int, 4}, {:int, 6}})
  end

  def eval({:add, {:int, x}, {:int, y}}), do: {:int, x+y}
  def eval({:sub, {:int, x}, {:int, y}}), do: {:int, x-y}
  
end
