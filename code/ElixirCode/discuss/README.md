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
  * [github auth settings](https://github.com/settings/applications)


## Notes

- Terms:
  - Phoenix:
    - `%Plug.Conn`
      - Represents both incoming & outgoing requests
    - **Model**
      - `migration -> model`
    - **View**
    - **Controller**
    - `route -> controller -> template -> view`
  - Ecto:
    - Ecto.Repo - Repositories are wrappers around a data store.
    - Ecto.Schema - Schemas are used to map any data source into an Elixir struct.
    - Ecto.Changeset - 
    - Ecto.Query - Written in Elixir syntax, queries are used to retrieve information from a given repository.
    - Migrations
      - `timestamps()` - Adds *Created at* & *Last updated at* fields.
  - *Plug*
    - Module Plug
    - Function Plug
  - *Web Sockets*
    - A protocol for exchanging dynamic and live information between a client & a server
  - *Longpoll*
    - Accomplishes the same thing as web sockets using http. (legacy)
  - *Pubsub*
  - *Contexts*

