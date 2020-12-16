defmodule TwoTree do

  @type leaf :: {:leaf, key, value} | :nil
  @type twoNode :: {:two, key, left, right} | :nil
  @type threeNode :: {:three, k1, k2, left, middle, right} | :nil
  @type fourNode :: {:four, k1, k2, k3, left, m1, m2, right} | :nil

  def insertf(key, value, nil), do: {:leaf, key, value}

  def insertf(key, val, {:leaf, k1, _} = list) do
    cond do
      key <= k1 ->
        {:two, key, {:leaf, key, val}, list}
      true ->
        {:two, k1, list, {:leaf, key, val}}
    end
  end


end
