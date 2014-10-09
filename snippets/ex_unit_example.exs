defmodule ExampleTest do
  use ExUnit.Case

  test "emoji" do
    assert Emoji.valid?("TODO is emoji")
  end

end
