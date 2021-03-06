defmodule SymphonyApi.Venue do
  use SymphonyApi.Web, :model

  schema "venues" do
    field :name, :string
    field :address, :string
    field :phone, :string
    field :image_url, :string
    field :details, :string 

    has_many :events, SymphonyApi.Event
    has_many :reviews, SymphonyApi.Review

    timestamps
  end

  @required_fields ~w(name address phone)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
