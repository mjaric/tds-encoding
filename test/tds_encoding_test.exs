defmodule TdsEncodingTest do
  use ExUnit.Case
  doctest Tds.Encoding

  test "greets the world" do
    assert Tds.Encoding.encode("Some normal", encoding) == :world
  end
end
