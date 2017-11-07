defmodule Manga do
  @moduledoc """
  Documentation for Manga.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Manga.hello
      :world

  """
  def hello do
    :world
  end

  def manga_list() do
    resp = HTTPoison.get!("http://www.mangaeden.com/api/list/0/")
    data = Poison.decode!(resp.body)
    data["manga"]
  end

  #def get_titles() do
  #  xs = manga_list()
  #  Enum.map xs, fn x ->
  #    x["t"]
  #  end
  #end

  def map_titles() do 
    xs = manga_list()
    Enum.map xs, fn x ->
      %{title: x["t"], id: x["i"]}
    end
  end

  def get_id_by_title(title) do
    filter = Enum.filter(map_titles(), fn(x) -> x[:title] == title end)
    info = Enum.map(filter, fn(x) -> x[:id] end)
    Enum.fetch!(info, 0)
  end

  def get_manga_info(id) do
    resp = HTTPoison.get!("http://www.mangaeden.com/api/manga/#{id}/")
    data = Poison.decode!(resp.body)
  end

end
