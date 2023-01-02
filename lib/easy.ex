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

end
