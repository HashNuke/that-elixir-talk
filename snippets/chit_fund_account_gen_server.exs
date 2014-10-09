# Basic chit-fund account
defmodule ChitFundAccount do
  use GenServer

  def init([]), do: {:ok, 0}

  def handle_call({:deposit, amount}, _from, state) do
    new_balance = state + amount
    {:reply, :ok, new_balance}
  end

  # We are not handling withdrawal > balance error :)
  def handle_call({:withdraw, amount}, _from, state) do
    new_balance = state - amount
    {:reply, :ok, new_balance}
  end

  def handle_call(:balance, _from, state) do
    {:reply, state, state}
  end
end