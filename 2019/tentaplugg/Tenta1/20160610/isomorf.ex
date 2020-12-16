defmodule Isomorf do

  @type tree :: {:tree, integer(), tree(), tree()} | nil

  def test_true do
    isomorfic({:tree, 1, nil, {:tree, 1, nil, nil}},{:tree, 1, nil, {:tree, 1, nil, nil}})
  end

  def test_false do
    isomorfic({:tree, 1, nil, {:tree, 1, nil, nil}},{:tree, 1, nil, {:tree, 1, nil, {:tree, 1, nil, nil}}})
  end

  def isomorfic(nil, nil), do: true
  def isomorfic({:tree, _, _, _}, :nil), do: :false
  def isomorfic(:nil, {:tree, _, _, _}), do: :false
  def isomorfic({:tree, _, :nil, right1}, {:tree, _, :nil, right2}), do: isomorfic(right1, right2)
  def isomorfic({:tree, _, left1, :nil}, {:tree, _, left2, :nil}), do: isomorfic(left1, left2)

end
