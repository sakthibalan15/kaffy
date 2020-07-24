defmodule AdminPanel.Accounts.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  schema "employees" do
    field :designation, :string
    field :location, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:name, :designation, :location])
    |> validate_required([:name, :designation, :location])
  end
end
