defmodule Triss do

  def test do
    triss([1,1,3,2,2])
  end

  def triss([]), do: false

  def triss([x,x,x,x,x]), do: true
  def triss([x,x,x,x,_]), do: true
  def triss([x,x,x,_,_]), do: true
  def triss([x,x,_,x,_]), do: true
  def triss([x,_,x,_,x]), do: true
  def triss([_,x,x,_,x]), do: true
  def triss([_,x,_,x,x]), do: true
  def triss([_,_,x,x,x]), do: true
  def triss([_,x,x,x,x]), do: true

  def triss([_, _, _, _, _]), do: false

end
