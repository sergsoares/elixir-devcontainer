defmodule Playing do
  @moduledoc """
  Documentation for `Playing`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Playing.hello()
      :world

  """
  def main(_) do
    IO.puts "Calling google live"
    url = "https://google.com"

    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        IO.puts body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
    end

    # case HTTPoison.get(url) do
    #   {:ok, %{status_code: 200, body: body}} ->
    #     Poison.decode!(body)
    #     IO.puts (body)

    #   {:ok, %{status_code: 404}} ->
    #     # do something with a 404

    #   {:error, %{reason: reason}} ->
    #     # do something with an error
    # end

  end


end
