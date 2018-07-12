# Discuss

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Learn more

  * [StephenGrider/ElixirCode](https://github.com/StephenGrider/ElixirCode)
  * [Official website](http://www.phoenixframework.org/)
  * [Docs](https://hexdocs.pm/phoenix)
  * [Source](https://github.com/phoenixframework/phoenix)
  * [elixir-ecto/ecto](https://github.com/elixir-ecto/ecto)


## Notes

- route -> controller -> template -> view
- `%Plug.Conn`
  - Represents both incoming & outgoing requests
- Terms:
  - Phoenix:
    - Model
    - View
    - Controller
  - Ecto:
    - Ecto.Repo - Repositories are wrappers around a data store.
    - Ecto.Schema - Schemas are used to map any data source into an Elixir struct.
    - Ecto.Changeset - 
    - Ecto.Query - Written in Elixir syntax, queries are used to retrieve information from a given repository.
  - Plug
