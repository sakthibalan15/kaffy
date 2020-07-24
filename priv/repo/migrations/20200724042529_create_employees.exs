defmodule AdminPanel.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    create table(:employees) do
      add :name, :string
      add :designation, :string
      add :location, :string

      timestamps()
    end

  end
end
