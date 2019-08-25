defmodule Mysite.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :text
      add :views, :integer, default: 0

      timestamps()
    end

  end
end
