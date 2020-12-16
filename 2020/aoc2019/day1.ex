defmodule Aoc2019.Day1 do
  @type mass :: integer

  @spec fuel(mass) :: integer
  def fuel(mass) do
    mass
    |> div(3)
    |> floor()
    |> Kernel.-(2)
  end

  def total_fuel([]) do 0 end
  def total_fuel([head | tail]) do total_fuel(tail) + head end

  # ! operator returns the content of the file, instead of a tuple.
  # File.read!("inputs/day1.txt")
  # -> "56017\n141632\n...
  # File.read("inputs/day1.txt")
  # -> {:ok, "56017\n141632\n...}

  # The result of File.read!("inputs/day1.txt") will pass the result of the
  # expression as the first parameter of another expression
  # in other words the expression result will go to part1(input)
  def part1() do
    File.read!("inputs/day1.txt")
    |> part1()
  end

# Same thing here, the pipe operator |> will pass the result of the
# expression as the first parameter of another expression
# input from part1() will be passed to this function and passed around to
# String and Enum
  @spec part1(String.t()) :: integer
  def part1(input) do
    input
    |> String.trim()
    |> String.split()
    |> Enum.map(&String.to_integer/1)
    |> total_fuel()
  end

  
end
