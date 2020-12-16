defmodule Brot do

  def mandelbrot(complexNum, max) do
    z0 = Cmplx.new(0,0)
    counter = 0
    test(counter, z0, complexNum, max)
  end

  def test(max, _z ,_complexNum, max), do: 0
  def test(counter, z, complexNum, max) do
    a = Cmplx.abs(z)

    if a < 2 do
      z1 = Cmplx.add(Cmplx.sqr(z), complexNum)
      test(counter+1, z1, complexNum, max)
    else
      counter
    end
    end

  end
