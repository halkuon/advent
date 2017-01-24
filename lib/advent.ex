require IEx;

defmodule Advent do

  def coordinate(steps) do
    {_, final } = steps
      |> String.split(", ")
      |> Enum.flat_map_reduce([0, 0, :n], fn step, position ->
         {direction, steps} = String.split_at(step, 1)
         new_position = position |> turn(direction) |> step(String.to_integer(steps))
         {[position], new_position}
      end)

    determine_distance(final)
  end

  @turn %{"R" => [n: :e, e: :s, s: :w, w: :n], "L" => [n: :w, w: :s, s: :e, e: :n]}

  defp turn([x, y, old_heading], direction) do
    [x,y,@turn[direction][old_heading]]
  end

  defp determine_distance([x,y,_]), do: abs(x) + abs(y)

  defp step([x,y,:n], steps), do: [x,y+steps,:n]
  defp step([x,y,:e], steps), do: [x+steps,y,:e]
  defp step([x,y,:s], steps), do: [x,y-steps,:s]
  defp step([x,y,:w], steps), do: [x-steps,y,:w]
end

