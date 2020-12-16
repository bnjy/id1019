defmodule Der do
  @type literal() :: {:const, number()} | {:const, atom()} | {:var, atom()}
  @type expr() :: {:add, expr(), expr()} | {:mul, expr(), expr()} | literal()

  def deriv({:const, _}, _), do: {:const, 0}

  def deriv({:var, x}, x), do: {:const, 1}

  def deriv({:var, y}, _), do: {:const, 0}

  def deriv({:mul, expr1, expr2}, x) do
    {:add, {:mul, deriv(expr1, x), expr2}, {:mul, expr1, deriv(expr2, x)}}
  end

  def deriv({:add, expr1, expr2}, x) do
    {:add, deriv(expr1,x), deriv(expr2,x)}
  end

end
