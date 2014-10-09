defmodule SholayServer do
  use GenServer

  def handle_call(:basanti, from, state) do
    {:reply, "Mogambo kush hua ~!", state}
  end
end