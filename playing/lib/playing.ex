defmodule Playing do

  def hello(url) do
    IO.puts "> Calling API #{url}"
    HTTPoison.start()

    # case HTTPoison.get(url) do
    #   {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
    #     IO.puts body
    #   {:ok, %HTTPoison.Response{status_code: 404}} ->
    #     IO.puts "Not found :("
    #   {:error, %HTTPoison.Error{reason: reason}} ->
    #     IO.inspect reason
    # end



    :world
  end
end
