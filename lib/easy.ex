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


  @doc """
  Codewars kata to sum first n members of series 1, 1/4, 1/7, 1/10...

  ## Examples

    iex> Easy.fract_sum(2)
    "1.25"

    iex> Easy.fract_sum(0)
    "0.00"
  """
  @spec fract_sum(non_neg_integer) :: binary
  def fract_sum(n) do
    :erlang.float_to_binary(sum_helper(n), decimals: 2)
  end

  defp sum_helper(0), do: 0.0
  defp sum_helper(1), do: 1.0
  defp sum_helper(n) do
    1 / (1 + (n - 1) * 3) + sum_helper(n - 1)
  end
end
