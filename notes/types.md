# Types

<!-- TOC -->

- [Integers](#integers)
- [Floats](#floats)
- [Booleans](#booleans)
- [Atoms](#atoms)
- [Strings](#strings)
- [Nil](#nil)
- [Tuples](#tuples)
  - [Tuple Functions](#tuple-functions)
- [Lists](#lists)
- [Maps](#maps)

<!-- /TOC -->

## Integers
- Elixir supports shortcut notations for entering binary, octal, and hexadecimal numbers.
- No size limit. (Other than available system memory)
- You can also use `is_integer/1`, `is_float/1`, or `is_number/1` to check, respectively, if an argument is an integer, a float, or either.

## Floats
- Float numbers require a dot followed by at least one digit and also support e for scientific notation.
- Floats in Elixir are 64-bit double precision.
- You can invoke the `round()` function to get the closest integer to a given float, or the `trunc()` function to get the integer part of a float.

## Booleans
- The booleans true and false are, in fact, atoms.
- In Elixir, `:false` & `:nil` are the only falsey values.

## Atoms
- An atom is a constant whose name is its own value. Some other languages call these symbols.
```elixir
true == :true
false == :false
:nil   # falsey
```

## Strings
- Strings in Elixir are delimited by double quotes, and they are encoded in UTF-8.

## Tuples
- An ordered collection, usually with 2 - 4 values.
```elixir
{:ok, content}
{:error, reason}
```
### Tuple Functions
- `elem(tuple, index)`
- `put_elem(tuple, index, new value)`

## Lists
- Comprised of a *head* & a *tail*.
<!-- - **keyword-lists** -->

## Maps
- In Elixir, a map is a collection of key-value pairs.
