defmodule Recursion do
  def product_clauses(0, _) do
    0
  end

  def product_clauses(m, n) do
    product_clauses(m-1,n) + n
  end

  def product_case(m, n) do
    case m do
      0 ->
        0
      _ ->
        product_case(m-1, n) + n
    end
  end

  def product_cond(m, n) do
    cond do
      m == 0 ->
        0
      true ->
        product_cond(m-1, n) + n
      end
  end
end
