defmodule TwoTree do

  @type leaf :: {:leaf, key, value} | nil
  @type twoNode :: {:two, key, left, right} | nil
  @type threeNode :: {:three, k1, k2, left, middle, right} | nil
  @type fourNode :: {:four, k1, k2, k3, left, m1, m2, right} | nil

  def test do
    insertf(14, :grk, {:two, 7, {:three, 2, 5, {:leaf, 2, :foo},
    {:leaf, 5, :bar}, {:leaf, 7, :zot}}, {:three, 13, 16,
    {:leaf, 13, :foo}, {:leaf, 16, :bar}, {:leaf, 18, :zot}}})
  end

  def insertf(key, value, nil), do: {:leaf, key, value}

  def insertf(key, value, {:leaf, key1, _} = list) do
    cond do
      key <= key1 ->
        {:two, key, {:leaf, key, value}, list}
      true ->
        {:two, key1, list, {:leaf, key, value}}
    end
  end

  def insertf(key, value, {:two, key1, {:leaf, key1, _} = list1, {:leaf, key2, _} = list2}) do
    cond do
      key <= key1 ->
        {:three, key, key1, {:leaf, key, value}, list1, list2}
      key <= key2 ->
        {:three, key1, key, list1, {:leaf, key, value}, list2}
      true ->
        {:three, key1, key2, list1, list2, {:leaf, key, value}}
      end
    end

  def insertf(key, value, {:three, key1, key2, {:leaf, key1, _} = list1,
                                                {:leaf, key2, _} = list2,
                                                {:leaf, key3, _} = list3}) do
    cond do
      key <= key1 ->
        {:four, key, key1, key2, {:leaf, key, value},list1, list2, list3}

      key <= key2 ->
        {:four, key1, key, key2, list1, {:leaf, key, value}, list2, list3}

      key <= key3 ->
        {:four, key1, key2, key, list1, list2, {:leaf, key, value}, list3}

      true ->
        {:four, key1, key2, key3, list1, list2, list3, {:leaf, key, value}}

      end
end

  def insertf(key, value, {:two, key1, left, right}) do
  cond do
    key <= key1 ->
      case insertf(key, value, left) do
        {:four, fourKey1, fourKey2, fourKey3, fourList1, fourList2, fourList3, fourList4} ->
          {:three, fourKey2, key1, {:two, fourKey1, fourList1, fourList2}, {:two, fourKey3, fourList3, fourList4}}

        updated ->
          {:two, key1, updated, right}
      end

    true ->
      case insertf(key, value, right) do
        {:four, fourKey1, fourKey2, fourKey3, fourList1, fourList2, fourList3, fourList4} ->
          {:three, key1, fourKey2, left, {:two, fourKey1, fourList1, fourList2}, {:two, fourKey3, fourList3, fourList4}}

        updated ->
          {:two, key1, left, updated}
      end
  end
end

end
