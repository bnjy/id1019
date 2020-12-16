defmodule Ten do

  def decode([]) do [] end
  def decode([{char, 1} | tail]) do [char | decode(tail)] end
  def decode([{char, n} | tail]) do [char | decode([{char, n-1} | tail])] end

  def zip([],[]) do [] end
  def zip([x | xtail], [y | ytail]) do
    [{x, y} | zip(xtail, ytail)]
  end

  # def eval(n) do n end
  # def eval({:mul, expr1, expr2}) do eval(expr1) * eval(expr2) end
  # def eval({:add, expr1, expr2}) do eval(expr1) + eval(expr2) end
  # def eval({:neg, expr1})        do -eval(expr2) end

# En lista av Gray-koder har den egenskapen att två sekvenser efter varandra
# skiljer sig på exakt en position. Det vanliga sättet att koda binära tal uppfyller inte det kravet eftersom två tal efter varandra kan förändras på era
# olika positioner (binärt 3 och 4 är 011 och 100). Detta verkar komplicerat
# men det nns ett enkelt sätt att generera en lista av Gray-koder av längd n - vi gör det rekursivt.

# Listan av Gray-koder för sekvenser av längd noll är listan som innehåller
# endast den tomma sekvensen [[]].
# För att generera en lista med Gray-koder av längd n så:
# • generera en lista av Gray-koder av längd n − 1,
# • vänd på listan så att vi har en omvänd kopia,
# • skapa en uppdatering av den första listan där vi lagt till 0 i början på alla koder,
# • skapa en uppdatering av den omvända listan där vi lagt till 1 i början på alla koder och
# • skapa den slutgiltiga listan genom att slå ihop de två nya listorna.
# Du kan använda dig av en inbyggd funktion reverse/1, som returnerar en
# omvänd lista, och append/2 för att slå ihop två listor.
# Du vill med stor säkerhet implementera en funktion update/2 som tar en
# lista av koder och ett tal (0 eller 1) och returnerar den uppdaterade listan
# av koder.

  def gray(0) do [[]] end
  def gray(n) do
    g1 = gray(n-1)
    r1 = reverse(g1)
    append( update(g1, 0), update(r1, 1))
  end
  def update([], _) do [] end
  def update([h|t], b) do
    [[b|h]| update(t,b)]
  end

end
