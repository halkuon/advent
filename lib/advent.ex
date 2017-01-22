defmodule Advent do
  def test_data do
    ["R1", "L4", "L5", "L5", "R2", "R2",]
  end

  def coordinate(test_data) do
    final = Enum.reduce(test_data, {:N, [0,0]}, fn(x,acc) -> move(x, acc) end)
    tester = elem(final,1)
    abs(List.first(tester)) + abs(List.last(tester))
  end

  def move(new, old_coord) when elem(old_coord, 0) == :N do
    [turn,steps,x,y] = extract_values(new, old_coord)
    cond do
      turn == "R" -> {:E, [x+steps, y]}
      turn == "L" -> {:W, [x-steps, y]}
    end
  end

  def move(new, old_coord) when elem(old_coord, 0) == :E do
    [turn,steps,x,y] = extract_values(new, old_coord)
    cond do
      turn == "R" -> {:S, [x, y-steps]}
      turn == "L" -> {:N, [x, y+steps]}
    end
  end

  def move(new, old_coord) when elem(old_coord, 0) == :S do
    [turn,steps,x,y] = extract_values(new, old_coord)
    cond do
      turn == "R" -> {:W, [x-steps, y]}
      turn == "L" -> {:E, [x+steps, y]}
    end
  end

  def move(new, old_coord) when elem(old_coord, 0) == :W do
    [turn,steps,x,y] = extract_values(new, old_coord)
    cond do
      turn == "R" -> {:N, [x, y+steps]}
      turn == "L" -> {:S, [x, y-steps]}
    end
  end

  def extract_values(new,coords) do
    turn = String.at(new,0)
    steps = String.to_integer(elem(String.split_at(new,1),1))
    x = List.first(elem(coords, 1))
    y = List.last(elem(coords, 1))
    [turn,steps,x,y]
  end
end
