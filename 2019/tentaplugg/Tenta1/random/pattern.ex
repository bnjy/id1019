defmodule Pattern do

  def same(x,x), do: true
  def same(_,_), do: false

  def old_enough(x) when x <= 15, do: false
  def old_enough(_), do: true

  def right_age(x) when x >= 16 and x <= 104, do: true
  def right_age(_), do: false


end
