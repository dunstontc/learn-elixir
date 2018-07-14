defmodule Discuss.Repo.Migrations.AddComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add(:content, :string)
      add(:user_id, references(:users))
      add(:topic_id, references(:topics))

      timestamps() # Adds "Created at" & "Last updated at"
    end
  end
end
