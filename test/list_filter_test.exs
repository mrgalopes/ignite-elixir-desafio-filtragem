defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "should filter all strings and odd numbers" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = []

      assert ListFilter.call(list1) == 3
      assert ListFilter.call(list2) == 0
    end
  end
end
