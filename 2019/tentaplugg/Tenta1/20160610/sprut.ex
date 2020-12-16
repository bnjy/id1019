defmodule Sprut do

  @type car :: {:car,integer(),string(),atom()}

  def new(id, brand, color) do
    {:car, id, brand, color}
  end

  def color({:car, _id, _brand, color}), do: color

  def paint({:car, id, brand, _color}, newColor) do
    {:car, id, brand, newColor}
  end


end
