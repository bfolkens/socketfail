defmodule SocketfailTest do
  use ExUnit.Case
  doctest Socketfail

  test "greets the world" do
    assert Socketfail.hello() == :world
  end
end
