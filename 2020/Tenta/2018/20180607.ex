defmodule Ten do

  # Vi skall implementera en funktion fizzbuzz/1 som givet ett tal n ≥ 0 returnerar en lista av de n första elementen i zzbuzz-serien. Fizz-Buzz går till
  # så att man räknar från 1 till n men byter ut all tal som är delbara med 3
  # mot :fizz, alla tal som är delbara med 5 med :buzz och all tal som är delbara med både 3 och 5 mot :fizzbuzz. De första fem elementen är således:
  # [1,2,:fizz,4,:buzz].
  # Du skall implementera den rekursiva funktionen fizzbuzz/4 som hjälper
  # oss att göra detta. Första argumentet är nästa element i listan, andra för
  # att veta att vi är klara och tredje o fjärde håller reda på om talet är delbart
  # med 3 eller 5. Du får bara använda addition, inte någon annan aritmetisk
  # operation. Du skall inte göra funktionen svansrekursiv.
  # Om du tycker att detta är enkelt så prova att göra det i kväll efter tre öl!

  def fizzbuzz(n) do fizzbuzz(1, n+1, 1, 1) end
  def fizzbuzz(n) do fizzbuzz(1, n+1, 1, 1) end
  def fizzbuzz(i, i, _fizz, _buzz) do [] end
  def fizzbuzz(i, n, 3, 5) do [:fizzbuzz | fizzbuzz(i+1, n, 1, 1)] end
  def fizzbuzz(i, n, fizz, 5) do [:buzz | fizzbuzz(i+1, n, fizz+1, 1)] end
  def fizzbuzz(i, n, 3, buzz) do [:fizz | fizzbuzz(i+1, n, 1, buzz+1)] end
  def fizzbuzz(i, n, fizz, buzz) do [i | fizzbuzz(i+1, n, fizz+1, buzz+1)] end

  # {:node, 5, {:node, 6, {:node, 6, :nil, :nil}, :nil}, :nil}
  # @type tree() :: nil | {:node, any(), tree(), tree()}
  def depth(:nil) do 0 end
  def depth({:node, _, left, right}) do
    depthLeft = depth(left)
    depthRight = depth(right)
    depth = max(depthLeft, depthRight) + 1
    depth
  end

# {:node, {:node, :nil, :nil}, {:node, :nil, :nil}}
  def fairly(:nil) do 0 end
  def fairly({:node, left, right}) do
    depthLeft = fairly(left)
    depthRight = fairly(right)
    cond do
      abs(depthLeft - depthRight) < 2 ->
        {:ok, max(depthLeft, depthRight)}
      true ->
        :no
    end
  end

end
