defmodule Recursion do

#simple function with if else condition
  def product(m,n) do
    if m == 0 do
      0
    else
      product(m-1,n) + n
    end
  end

#case expression
  def product_case(m, n) do
    case m do
      0 ->
        0
      _ ->
        product_case(m-1, n) + n
    end
  end

#cond-do expression
  def product_cond(m, n) do
    cond do
      m == 0 ->
        0
      true ->
        product_cond(m-1, n) + n
      end
  end

#clauses example
  def product_clauses(0, _) do
    0
  end

  def product_clauses(m, n) do
    product_clauses(m-1,n) + n
  end

  def exp(_, 0) do 1 end
  def exp(x,n) do
    x * exp(x,n-1)
  end

  def exp_cond(x,n) do
    cond do
      n == 0 ->
        1
      true ->
        x * exp_cond(x,n-1)
      end
    end

  def exp_case(x,n) do
    case n do
      0 ->
        1
      _ ->
      x * exp_case(x,n-1)
    end
  end
end
