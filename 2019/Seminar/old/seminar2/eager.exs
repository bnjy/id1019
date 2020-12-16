defmodule Eager do

  @type atm :: {:atm, atom()}
  @type var :: {:var, atom()}
  @type cons(expresion) :: {:cons, expresion, expresion}

  def eval_expr({:atm, value}, []) do {:ok, value} end

  def eval_expr({:var, value}, env) do
    case Env.lookup(value, env) do
      nil ->
        :error
      {_, structure} ->
        # use tuple {:ok, ...} to see success even if structure is :error
        {:ok, structure}
    end
  end

  def eval_expr({:cons, expr1, expr2}, env) do
    case eval_expr(expr1, env) do
      :error ->
        :error
      {:ok, expr1_val} ->
        case eval_expr(expr2, env) do
          :error ->
            :error
          {:ok, expr2_val} ->
            {:ok, [expr1_val | expr2_val]}
        end
    end
  end

  def eval_match(:ignore, _, env) do
    {:ok, env}
  end

  def eval_match({:atm, id}, id, env) do
    {:ok, env}
  end

  def eval_match({:var, id}, structure, env) do
    case Env.lookup(id, env) do
      nil ->
        {:ok, Env.add(id, structure, env)}
      {_, ^str} ->
          {:ok, env}
      {_, _} ->
          :fail
      end
    end

  def eval_match({:cons, expr1, expr2}, [head|rest], env) do
    case eval_match(expr1, head, env) do
      :fail ->
        :fail
      {:ok, env} ->
        eval_match(expr2, rest, env)
    end
  end

  def eval_match(_, _, _) do
    :fail
  end

  # def eval_seq([exp], env) do
  #   eval_expr(..., ...)
  # end
  #
  # def eval_seq([{:match, ..., ...} | ...], ...) do
  #   case eval_expr(..., ...) do
  #     ... ->
  #       ...
  #     ... ->
  #       vars = extract_vars(...)
  #       env = Env.remove(vars, ...)
  #
  #       case eval_match(..., ..., ...) do
  #         :fail ->
  #           :error
  #         {:ok, env} ->
  #           eval_seq(..., ...)
  #       end
  #   end
  # end

end
