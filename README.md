[![Play with Elixir](http://elixir-lang.org/images/logo/logo.png)](http://elixir-lang.org/)

Elixir is functional programming language which run on Erlang VM.
- Syntax is inspired by Ruby
- Actor model

### Data Types
- Integer
- Float
- String
- Boolean
- Atom
- List (Linked list)
- Tuple (Continous in memory)

### Condition
- case
- cond
- if/else
- unless

### Binaries, Strings and Char lists
- A string is a UTF-8 encoded binary.
- The Unicode standard assigns code points to many of the characters. For example, the letter a has code point 97 while the letter ł has code point 322
- Binary String : A binary is a sequence of bytes. <<0, 1, 2, 3>>
- The string concatenation operation is actually a binary concatenation operator.
- A char list is nothing more than a list of code points. Char lists may be created with single-quoted literalsChar lists may be created with single-quoted literals.
- Functions are polymorphic. They not only convert char lists to strings, but also integers to strings, atoms to strings, and so on.

### Keywords and Maps
##### Keyword lists
A list of tuples and the first item of the tuple (i.e. the key) is an atoma list of tuples and the first item of the tuple (i.e. the key) is an atom.
Example :
```elixir
list = [{:a, 1}, {:b, 2}]
```
Keyword lists are important because they have three special characteristics:

- Keys must be atoms.
- Keys are ordered, as specified by the developer.
- Keys can be given more than once.

##### Maps
Maps are the “go to” data structure in Elixir. A map is created using the %{} syntax.
Example :
```elixir
map = %{:a => 1, :b => 2}
```
- Maps allow any value as a key.
- Maps’ keys do not follow any ordering.

Update map
```elixir
 %{map | :a => 2}
```
Both access and update syntaxes above require the given keys to exist

### Modules
- Create our own modules in Elixir, we use the ``` defmodule macro ```
- We use the ``` def ``` macro to define functions in that module

```elixir
defmodule StringInfo do
  def size_details(str) do
    IO.puts byte_size(str)
    IO.puts String.length(str)
  end
end
$> iex string_info.ex
iex> StringInfo("Elixir")
```

##### Named functions
Inside a module, we can define private functions with defp. A function defined with defp can be invoked from other modules while a private function can only be invoked locally.

### Function Capturing
This can actually be used to retrieve a named function as a function type.
- Capture functions using operator &.  &name/arity(arguments)
- capture syntax can also be used as a shortcut for creating functions.

```elixir
fun = &StringInfo.size_details/1
fun.('Elixir')
```

```elixir
fun = &(&1 + 1)
fun.(1) //2
```

### Recursion
Example : Fibonacci Series
```elixir
def generate(length, previous, next) when length <= 1 do
  IO.puts next
end

def generate(length, previous, next) when length > 1 do
  IO.puts next
  generate(length - 1, next, previous + next)
end
# \\ default parameter
def generate(length, n \\ 0) do
  generate(length, n, n + 1)
end
```

### Enumerables
Elixir provides the concept of enumerables and the Enum module to work with them.
- The Enum module provides a huge range of functions to transform, sort, group, filter and retrieve items from enumerables.
- We say the functions in the Enum module are polymorphic because they can work with diverse data types.
- When performing multiple operations with Enum, each operation is going to generate an intermediate list until we reach the result

```elixir
  Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end)  //6
  Enum.map([1, 2, 3], fn(x) -> x * 2 end) // [2, 4, 6]
```

### Pipe operator
It takes the output from the expression on its left side and passes it as the first argument to the function call on its right side. It’s similar to the Unix | operator.
- Its purpose is to highlight the data being transformed by a series of functions.

```elixir
1..10 |> Enum.map(&(&1 + 1))
```
