defmodule Cmplx do

  def new(real, imaginary) do
    {:cpx, real, imaginary}
  end

  def add({:cpx, aReal, aImaginary}, {:cpx, bReal, bImaginary}) do
    {:cpx, aReal+bReal, aImaginary+bImaginary}
  end

  def sqr({:cpx, a, b}) do
    {:cpx, a*a - b*b, 2*a*b}
  end

  def abs({:cpx, a, b}) do
    :math.sqrt(a*a + b*b)
  end

end
