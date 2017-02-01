require IEx;

defmodule Advent2 do

  @step %{1 => %{"U" => 1, "R" => 2, "D" => 4, "L" => 1},
          2 => %{"U" => 2, "R" => 3, "D" => 5, "L" => 1},
          3 => %{"U" => 3, "R" => 3, "D" => 6, "L" => 2},
          4 => %{"U" => 1, "R" => 5, "D" => 7, "L" => 4},
          5 => %{"U" => 2, "R" => 6, "D" => 8, "L" => 4},
          6 => %{"U" => 3, "R" => 6, "D" => 9, "L" => 5},
          7 => %{"U" => 4, "R" => 8, "D" => 7, "L" => 7},
          8 => %{"U" => 5, "R" => 9, "D" => 8, "L" => 7},
          9 => %{"U" => 6, "R" => 9, "D" => 9, "L" => 8}}

  def code(instructions) do
    {code_list, _} = instructions |> String.split |> Enum.map_reduce(5, &code_digit/2)
    Enum.join(code_list)
  end

  defp code_digit(line, digit) do
    new_digit = line |> String.codepoints |> Enum.reduce(digit, fn dir, state ->
                  @step[state][dir]
                end)

    {"#{new_digit}", new_digit}
  end
end

ExUnit.start

defmodule Advent2Test do
  use ExUnit.Case, async: true

  @example_input """
  ULL
  RRDDD
  LURDL
  UUUUD
  """
  assert "1985" = Advent2.code(@example_input)
end

