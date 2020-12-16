defmodule Dillinger do

  def dillinger do
    spawn(fn() -> nyc() end)
  end

  def nyc() do
    IO.puts("Hey Jim!")
    receive do
      :knife -> knife()
    end
  end

  def knife() do
    receive do
      :fork -> fork()
    end
  end

  def fork() do
    receive do
      :bottle -> bottle()
    end
  end

  def bottle() do
    receive do
      :cork -> nyc()
    end
  end

end
