defmodule Trivial do

  @doc """
  Greatest common denominator between a and b

  ## Examples

      iex> Trivial.gcd(132, 532)
      4

  """
  @spec gcd(any, integer) :: any
  def gcd(a, 0), do: a
  def gcd(a, b), do: gcd(b, rem(a, b))

  @doc """
  Codewars kata:
  Write a function that returns true if the number is a "Very Even" number.

  If a number is a single digit, then it is simply "Very Even" if it itself is even.

  If it has 2 or more digits, it is "Very Even" if the sum of its digits is "Very Even".

  ## Examples

    iex> Trivial.is_very_even(9)
    false
    iex> Trivial.is_very_even(88)
    false
    iex> Trivial.is_very_even(8822)
    true
  """
  @spec is_very_even(integer) :: boolean
  def is_very_even(number) when number < 10, do: rem(number, 2) == 0
  def is_very_even(number) do
    number
    |> Integer.digits
    |> Enum.sum
    |> is_very_even
  end

  @doc """
  Codewars kata: Get 'extra perfect' numbers, that have first and last bit set -> any odd number

  ## Examples

    iex> Trivial.extra_perfect(3)
    [1, 3]
  """
  @spec extra_perfect(integer) :: list
  def extra_perfect(n) do
    Enum.to_list(1..n)
    |> Enum.filter(fn x -> rem(x, 2) == 1 end)
  end

end
