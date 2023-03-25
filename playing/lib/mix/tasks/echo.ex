defmodule Mix.Tasks.Echo do
  @moduledoc "Printed when the user requests `mix help echo`"
  @shortdoc "Echoes arguments"

  use Mix.Task

  @impl Mix.Task
  def run(_) do
    output = """
root@codespaces-827dd8
OS: Debian 10 buster
Kernel: x86_64 Linux 5.4.0-1104-azure
Uptime: 1h 5m
Packages: 551
Shell: bash 5.0.3
CPU: Intel Xeon Platinum 8272CL @ 2x 2.594GHz
GPU: hyperv_fb
RAM: 1259MiB / 3932MiB
"""

    result = output
      |> String.split("\n")


    all = %{a: 1, b: 2, c: 3}

    for item <- result, into: all do
      list = String.split(item, ": ")

      key = Enum.at(list,0)
      value = Enum.at(list,1)
      # Map.put(all, key, value)
      {key, value}
    end

    IO.puts(all)
    # json = %{key => value}
    {_, result2} = JSON.encode(all)
    IO.puts(result2)
  end
end
