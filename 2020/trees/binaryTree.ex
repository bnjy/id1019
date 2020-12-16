defmodule BinaryTree do

#  @type tree :: :nil |
#                {:leaf, value}  |
#                {:node, value, left, right}

def test do
  {:node, 10, {:node, 5, {:leaf, 3}, {:leaf, 8}}, {:node, 15, {:leaf, 12}, {:leaf, 18}}}
end

def member(elem, :nil) do :no end
def member(elem, {:leaf, elem}) do :yes end
def member(_, {:leaf, _}) do :no end
def member(elem, {:node, elem, _, _}) do :yes end
def member(elem, {:node, val, left, right}) when elem < val do
  member(elem, left)
end
def member(elem, {:node, _, _, right}) do
  member(elem, right)
end

def insert(elem, :nil) do {:node, elem, :nil, :nil} end
def insert(elem, {:leaf, val}) when elem < val do
  {:node, val, {:leaf, elem}, :nil}
end
def insert(elem, {:leaf, val}) do {:node, val, :nil, {:leaf, elem}} end
def insert(elem, {:node, val, left, right}) when elem < val do
  {:node, val, insert(elem, left), right}
end
def insert(elem, {:node, val, left, right})  do
  {:node, val, left, insert(elem, right)}
end

def delete(elem, {:leaf, elem}) do :nil end
def delete(elem, {:node, elem, :nil, right}) do delete(elem, right) end
def delete(elem, {:node, elem, left, :nil}) do delete(elem, left) end
def delete(elem, {:node, elem, left, right}) do
   newElem = rightmost(left)
   left = delete(newElem, left)
   {:node, newElem, left, right}
end
def delete(elem, {node, val, left, right}) when elem < val do
    {:node, val, delete(elem, left), right}
end
def delete(elem, {node, val, left, right})  do
    {:node, val, left, delete(elem, right)}
end

def rightmost({:leaf, elem}) do elem end
def rightmost({:node, _, _ , right}) do rightmost(right) end


end
