defmodule SholayServer do
  use GenServer

  def handle_call(:basanti, from, state) do
    {:reply, "Chal Dhanno ~!", state}
  end
end