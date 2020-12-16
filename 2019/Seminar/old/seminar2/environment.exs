defmodule Env do

  def new() do
    []
  end

  # key and value atoms. env list.
  def add(key, str, env) do
    [{key, str} | env]
  end

  # key atom, env list.
  def lookup(key, env) do
    List.keyfind(env, key, 0)
  end

  # empty list or [head|tail], env -> list.
  def remove ([], env) do env end
  def remove([head | rest], env) do
    remove(rest, List.keydekete(env, head, 0))
  end

end
