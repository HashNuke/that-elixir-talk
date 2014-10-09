defmodule EmojiTest do
  use ExUnit.Case

  test "yin should not be valid emoji" do
    assert Emoji.valid?("阴") == false
  end
end
