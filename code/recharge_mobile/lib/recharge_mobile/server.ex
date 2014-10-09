defmodule RechargeMobile.Server do
  use GenServer
  use Hound.Helpers


  def start_link do
    GenServer.start(__MODULE__, [], name: __MODULE__)
  end


  def handle_call(:ping, _from, state) do
    {:reply, :pong, state}
  end


  def handle_call({:recharge, number, amount}, _from, state) do
    Hound.start_session

    navigate_to "http://paytm.com"

    find_element(:css,  "#mobileNumber")
    |> fill_field("#{number}")

    find_element(:css,  "#amount")
    |> fill_field("#{amount}")

    find_element(:name, "isFastForward")
    |> click

    click({:css, ".proceedButton"})

    :timer.sleep(1000)
    focus_frame(2)

    find_element(:css, "#mobileNumber")
    |> fill_field(paytm_email)

    find_element(:css, "#password")
    |> fill_field(paytm_password)

    find_element(:css, ".proceedButton")
    |> click

    find_element(:css, "#walletForm input[type=submit]")
    |> click

    Hound.end_session
    {:reply, :ok, state}
  end



  defp paytm_email do
    Application.get_env :recharge_mobile, :paytm_email
  end

  defp paytm_password do
    Application.get_env :recharge_mobile, :paytm_password
  end
end
