defmodule Mangalike.Chat.Room do
  use Ecto.Schema
  import Ecto.Changeset
  alias Mangalike.Chat.Room


  schema "rooms" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Room{} = room, attrs) do
    room
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
