defmodule Ten do

#  {:node, :a, 14, {:node, :b, 10, {:node, :c, 8, :nil, :nil}, {:node, :d, 11, :nil, :nil}}, {:node, :e, 20, :nil, :nil}}

  def lookup(key, :nil) do :false end
  def lookup(key, {:node, key, val, left, right}) do val end
  def lookup(key, {:node, not_key, val, left, right}) do
    case lookup(key, left) do
      val ->
          val
      :false ->
        lookup(key, right)
    end
  end

  def rom([]) do 0 end
  def rom([:X | tail]) do 10 + rom(tail) end
  def rom([:V | tail]) do 5 + rom(tail) end
  def rom([:I | tail]) do 1 + rom(tail) end

  def rom_extend([]) do 0 end
  def rom_extend([:I, :X | tail]) do 9 + rom_extend(tail) end
  def rom_extend([:I, :V | tail]) do 4 + rom_extend(tail) end
  def rom_extend([:X | tail]) do 10 + rom_extend(tail) end
  def rom_extend([:V | tail]) do 5 + rom_extend(tail) end
  def rom_extend([:I | tail]) do 1 + rom_extend(tail) end

  def rom_stack(list) do rom_stack(list, 0) end
  def rom_stack([], res) do res end
  def rom_stack([:I, :X | tail], res) do rom_stack(tail, res+9) end
  def rom_stack([:I, :V | tail], res) do rom_stack(tail, res+4) end
  def rom_stack([:X | tail], res) do rom_stack(tail, res+10) end
  def rom_stack([:V | tail], res) do rom_stack(tail, res+5) end
  def rom_stack([:I | tail], res) do rom_stack(tail, res+1) end

  def union([], list) do list end
  def union([head | tail], list) do [head | union(tail, list)] end

  def belongs(elem, []) do :false end
  def belongs(elem, [elem | tail]) do :true end
  def belongs(elem, [_head | tail]) do belongs(elem, tail) end

  def isec([], list) do [] end
  def isec([head | tail] , list) do
    case belongs(head, list) do
      :true -> [head | isec(tail, list)]
      :false -> isec(tail, list)
    end
  end

  def diff([], list) do [] end
  def diff([head | tail], list) do
    case belongs(head, list) do
      :true -> diff(tail, list)
      :false -> [head | diff(tail, list)]
    end
  end

  def map() do end

end
