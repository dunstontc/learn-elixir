# Tooling

<!-- TOC -->

- [Tools](#tools)
- [Editors](#editors)
  - [Vim](#vim)
  - [VSCode](#vscode)

<!-- /TOC -->

## Tools
- [hex](https://hex.pm/) (The package manager for the Erlang ecosystem)
- [mix](https://hexdocs.pm/mix/Mix.html)

### Mix 
- [Introduction to Mix](https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html)  
- Mix Tasks:
```sh
# Creates a new Elixir project. It expects the path of the project as argument.
mix new $PATH  # [--sup] [--module MODULE] [--app APP] [--umbrella]`

# Formats the given files and patterns.
mix format mix.exs "lib/**/*.{ex,exs}" "test/**/*.{ex,exs}"

# Starts and runs the current application.
mix run my_app_script.exs arg1 arg2 arg3
mix run -e "MyApp.start" -- arg1 arg2 arg3

# Runs the tests for a project.
mix test ./test/some/particular/file_test.exs

# A meta task that compiles source files.
# It simply runs the compilers registered in your project and returns a tuple with the compilation status and a list of diagnostics.
mix help compile.elixir
mix help compile.erlang
mix compile --list

# Gets all out of date dependencies, i.e. dependencies that are not available or have an invalid lock.
mix deps.get

# Executes the tasks separated by comma.
mix do compile --list, deps

# Lists all installed escripts.
# Escripts are installed at ~/.mix/escripts. Add that path to your PATH environment variable to be able to run installed escripts from any directory.
mix escript

```

## Editors

### Vim
- [mhinz/vim-mix-format](https://github.com/mhinz/vim-mix-format)
- [dm1try/nvim](https://github.com/dm1try/nvim)
- [dm1try/ilexir](https://github.com/dm1try/ilexir)
- [slashmili/alchemist.vim](https://github.com/slashmili/alchemist.vim)

