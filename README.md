# Play with elixir
Elixir is functional programming language which run on Erlang VM.
- Syntax is same as Ruby
- Actor model cuncurrenry

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
