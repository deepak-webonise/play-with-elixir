defmodule Fibonacci do
  def generate(length, previous, next) when length <= 1 do
    IO.puts next
  end

  def generate(length, previous, next) when length > 1 do
    IO.puts next
    generate(length - 1, next, previous + next)
  end

  def generate(length, n \\ 0) do
    generate(length, n, n + 1)
  end
end
