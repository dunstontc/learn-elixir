# Notes 

## Operators

|   Operator   |        Name        | Notes                                                       |
|:------------:|:------------------:|:------------------------------------------------------------|
|      `/`     |                    | Always returns a float. See: `div()` and `rem()`            |
|     `||`     | Short-circuited Or | Starting from the left, will return the first truthy value. |
|     `<>`     |       Concat       | Use for binary.                                             |
|     `++`     |     concatinate    | Use for lists.                                              |
| `start..end` |        Range       | Ranges are inclusive on both ends.                          |
|     `_`      |       Ignore       | Used for unused values                                      |
|     `=>`     |     Fat Arrow      |                                                             |


## Functions
- Functions in Elixir are identified by both their name and their arity. 
- Elixir allows you to drop the parentheses when invoking named functions. This feature gives a cleaner syntax when writing declarations and control-flow constructs.

### Common Functions
- `div()` 
- `rem()`
- `byte_size()`
- `String.length()`
- `elem()`
- `put_elem()`
- `hd()`
- `tl()`

## Syntax
- Binary
  - `<<1, 2, 3>>`
  
### Directives
- import
  - include module functions
  - include/exclude specific functions
- alias 
  - reduce typing
  - rename a module in your module
- require
  - allow using macros in your module


