# RechargeMobile

Elixir application that recharges your prepaid phone on <http://paytm.com> using [Hound](https://github.com/HashNuke/hound).

## Setup

Assuming you have Elixir installed.

* Install dependencies: `mix deps.get`
* Start application and Elixir console: `iex -S mix`
* Set your Paytm.com credentials in the ENV vars `PAYTM_EMAIL` and `PAYTM_PASSWORD`. You'll need to have your Paytm Wallet loaded with some cash.
* Recharge your phone by calling the below function:

```
RechargeMobile.recharge(10_digit_phone_number, recharge_amount)
```
