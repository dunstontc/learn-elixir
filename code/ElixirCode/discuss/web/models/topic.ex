defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do
    field(:title, :string)
  end

  # The struct represents the record in the database,
  # but the changeset object returned by changeset() is what's actually saved
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end

end
