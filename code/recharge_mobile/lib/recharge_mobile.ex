defmodule RechargeMobile do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Define workers and child supervisors to be supervised
      # worker(RechargeMobile.Worker, [arg1, arg2, arg3])
      worker(RechargeMobile.Server, [])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RechargeMobile.Supervisor]
    Supervisor.start_link(children, opts)
  end


  def recharge(number, amount) when is_integer(number) and is_integer(amount) do
    GenServer.call RechargeMobile.Server, {:recharge, number, amount}, 50000
  end


  def ping do
    GenServer.call RechargeMobile.Server, :ping
  end
end
