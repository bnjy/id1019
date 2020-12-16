defmodule Ten do
  # Implementera en funktion compute/1 som beräknar en CRC-kod givet
  # en sekvens och generatorn 1011.
  # Generator = 1011 = [1,0,1,1]
  # Sekvens = list = 11010011101100 = [1,1,0,1,0,0,1,1,1,0,1,1,0,0]

  def compute([]) do [] end
  def compute(sekvens) do compute(sekvens++[0,0,0], [1,0,1,1]) end

  def compute([first, second, third], _generator) do [first, second, third] end

  def compute([0 | tail], generator) do compute(tail, generator) end

  def compute([first, second, third, forth | tail], generator) do
    compute(xor([first, second, third, forth], generator)++tail, generator)
  end

  def xor([],[]) do [] end
  def xor([0 | rest], [0 |rest2]) do [0 | xor(rest,rest2)] end
  def xor([0 | rest], [1 |rest2]) do [1 | xor(rest,rest2)] end
  def xor([1 | rest], [0 |rest2]) do [1 | xor(rest,rest2)] end
  def xor([1 | rest], [1 |rest2]) do [0 | xor(rest,rest2)] end

# Luhn
# personnummer = [8,1,1,2,1,8,9,8,7]
# personnummer efter luhn = [16,1,2,2,2,8,18,8,14]
  def luhn([]) do [] end
  def luhn([last]) do [last*2] end
  def luhn([first, second | tail]) do
    sum = sum([first*2, second*1 | luhn(tail)])
    rem(sum,10)
  end

  def sum([]) do 0 end
  def sum([head | tail]) when head > 9 do ((head-10)+1) + sum(tail) end
  def sum([head | tail]) do head + sum(tail) end
  def sum(int) do int end

end
