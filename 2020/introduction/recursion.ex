defmodule Recursion do

def prod(0, _) do 0 end
def prod(m, n) do
  cond do
    m < 0 -> prod(m+1, n) - n
    m > 0 -> prod(m-1, n) + n
  end
end

def power(_,0) do 1 end
def power(m,n) do power(m, n-1) * m end

def fib(0) do 0 end
def fib(1) do 1 end
def fib(n) do fib(n-1) + fib(n-2) end

def ack(0,n) do n+1 end
def ack(m, 0) do ack(m-1, 1) end
def ack(m, n) do ack(m-1, ack(m,n-1)) end

end
