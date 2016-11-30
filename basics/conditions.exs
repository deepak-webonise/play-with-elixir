IO.puts 'Conditions'
str = case {1, 2, 3} do
  {1, a, 3} when a > 0 ->
    "This will match #{a}"
  _ ->
    "Default"
end
IO.puts str

x = 10
str = case 10 do
  ^x ->
    "This will  match #{x}"
  _ ->
    "Default"
end
IO.puts str

# Anonymous function with conditions
f = fn
  x, y when x > 0 -> x + y
  x, y -> x * y
end
IO.puts f.(1, 2)
IO.puts f.(-1, 2)

# Cond
cond do
  2 + 3 == 6 -> IO.puts 'Invalid'
  2 + 2 == 3 -> IO.puts 'Valid'
  true -> IO.puts 'Default'
end
