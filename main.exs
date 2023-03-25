Application.ensure_all_started(:inets)
Application.ensure_all_started(:ssl)


defmodule Test do
  def say_hi do
    IO.puts "Hi"
    {:ok, {{'HTTP/1.1', 200, 'OK'}, _headers, _body} =
      :httpc.request(:get, {'http://google.com', []}, [], [])

  end
end

Test.say_hi
