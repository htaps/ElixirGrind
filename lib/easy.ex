defmodule Easy do
@moduledoc """
Easy practices
"""

  @doc """
  Codewars kata: longest sorted distinct combination of a and b
  """
  def longest(a, b) do
    a <> b
    |> String.codepoints
    |> Enum.uniq
    |> Enum.sort
    |> Enum.join
  end

end
