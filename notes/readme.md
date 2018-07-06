# Notes 

## Operators

|   Operator   |        Name        | Notes                                                       |
|:------------:|:------------------:|:------------------------------------------------------------|
|      `/`     |                    | Always returns a float. See: `div()` and `rem()`            |
|     `||`     | Short-circuited Or | Starting from the left, will return the first truthy value. |
|     `<>`     |       Concat       | Use for binary.                                             |
|     `++`     |    concatenation   | Use for lists.                                              |
| `start..end` |        Range       | Ranges are inclusive on both ends.                          |
|     `_`      |       Ignore       | Used for unused values                                      |
|     `=>`     |     Fat Arrow      |                                                             |

## Operators in Guard Clauses
- Comparison (`==`, `!=`, `===`, `>`, `>=`, `<`, `<=`)
- boolean (`and`, `or`, `not`)
- arithmetic (`+`, `-`, `*`, `/`)
- binary concatenation `<>`
- `in` to the left of a range or a list

## Functions
- Functions in Elixir are identified by both their name and their *arity*. 
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

### Anonymous Functions
- lambda-style
- capture-style

## Control Flow
- If/Else
- Cond
- Case
  
### Directives
- `import`
  - include module functions
  - include/exclude specific functions
- `alias` 
  - rename a module in your module
- `require`
  - allow using macros in your module


## Terms

|        Term        |                                                                     Definition                                                                      |
| ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| **arity**          | The *arity* of a function describes the number of arguments that the function takes.                                                                |
| **atom**           | In Elixir, an *atom* is a constant whose name is also its value. <br/> Some other languages call these *symbols*.                                   |
| **head**           | The first item in a list.                                                                                                                           |
| **tail**           | All items after the head of a list.                                                                                                                 |
| **function**       | Functions transform data by taking an input, performing some actions, and returning an output.                                                      |
| **OTP**            | *OTP* (Open Telecom Platform) is a set of libraries that ships with Erlang. Erlang developers use OTP to build robust, fault-tolerant applications. |
| **Tail recursion** | Tail recursion only happens when the *last operation* a function performs is recursion.                                                             |
