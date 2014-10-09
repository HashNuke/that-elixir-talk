defmodule Emoji do
  def all do
    ["😃", "😊", "😜", "😉", "😍"]
  end


  def valid?(string) do
    Enum.member?(all, string)
  end
end
