defmodule StringInfo do
  def size_details(str) do
    IO.puts byte_size(str)
    IO.puts String.length(str)
  end
end
