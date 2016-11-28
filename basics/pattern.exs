IO.puts "1. Match operator \n2. Pattern Matching \n3. pin operator"

IO.puts "
  1. Match operator
    x = 1 //valid
    1 = x //valid because = mathces the value
    2 = x //invalid
"

IO.puts "
  2. Pattern Matching
    a. Match
    b. use ful for destructing complex DS
        [head | tail] = [1, 2, 3]
        > head
        1
        > tail
        [2, 3]
"
IO.puts "
  3. Pin operator
    a.Variables in Elixir can be rebound
      x = 1
      x = 2
    b. Use the pin operator ^ when you want to pattern match against an existing variable’s value rather than rebinding the variable
      x = 1
      ^x = 2 //error

"
