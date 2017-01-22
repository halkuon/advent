defmodule AdventTest do
  use ExUnit.Case
  doctest Advent

  test "the truth" do
    assert 1 + 1 == 2
  end

  describe ".coordinate" do
    test "R2, L3" do
      assert Advent.coordinate(["R2","L3"]) == 5
    end

    test "R2, R2, R2" do
      assert Advent.coordinate(["R2","R2","R2"]) == 2
    end

    test "R5, L5, R5, R3" do
      assert Advent.coordinate(["R5","L5","R5","R3"]) == 12
    end

    test "L5, L5, L5" do
      assert Advent.coordinate(["R1", "L4", "L5", "L5", "R2", "R2", "L1", "L1", "R2", "L3", "R4", "R3", "R2", "L4", "L2", "R5", "L1", "R5", "L5", "L2", "L3", "L1", "R1", "R4", "R5", "L3", "R2", "L4", "L5", "R1", "R2", "L3", "R3", "L3", "L1", "L2", "R5", "R4", "R5", "L5", "R1", "L190", "L3", "L3", "R3", "R4", "R47", "L3", "R5", "R79", "R5", "R3", "R1", "L4", "L3", "L2", "R194", "L2", "R1", "L2", "L2", "R4", "L5", "L5", "R1", "R1", "L1", "L3", "L2", "R5", "L3", "L3", "R4", "R1", "R5", "L4", "R3", "R1", "L1", "L2", "R4", "R1", "L2", "R4", "R4", "L5", "R3", "L5", "L3", "R1", "R1", "L3", "L1", "L1", "L3", "L4", "L1", "L2", "R1", "L5", "L3", "R2", "L5", "L3", "R5", "R3", "L4", "L2", "R2", "R4", "R4", "L4", "R5", "L1", "L3", "R3", "R4", "R4", "L5", "R4", "R2", "L3", "R4", "R2", "R1", "R2", "L4", "L2", "R2", "L5", "L5", "L3", "R5", "L5", "L1", "R4", "L1", "R1", "L1", "R4", "L5", "L3", "R4", "R1", "L3", "R4", "R1", "L3", "L1", "R1", "R2", "L4", "L2", "R1", "L5", "L4", "L5"]) == 230
    end
  end
end

#,"L20"]
