defmodule Hello.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Hello.Accounts.Credential

  schema "users" do
    field :name, :string
    has_one :credential, Credential

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
