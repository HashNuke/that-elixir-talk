defmodule Foo do

  def bar(x, 0), do: x
  def bar(x, y), do: x + y

  def bar(%{x: x, y: y}) do
    x + y
  end

end
