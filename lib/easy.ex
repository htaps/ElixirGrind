defmodule Easy do
@moduledoc """
Easy practices
"""

  @doc """
  Codewars kata: longest sorted distinct combination of a and b

  ## Examples

    iex> Easy.longest("aab", "bba")
    "ab"
  """
  def longest(a, b) do
    a <> b
    |> String.codepoints # String.graphemes also works
    |> Enum.uniq
    |> Enum.sort
    |> Enum.join
  end

  @doc """
  Get area of rectangle or square, from pattern matching chapter.

  ## Examples

    iex> Easy.area({:rectangle, 5, 4})
    20

    iex> Easy.area({:square, 10})
    100
  """
  @spec area({any, number} | {:rectangle, number, number}) :: number
  def area({:rectangle, a, b}), do: a * b
  def area({:square, a}), do: a * a

end
