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
  def extra_perfect(n), do: Enum.take_every(1..n, 2)

  @spec filter_odd(any) :: list
  def filter_odd(nums) do
    nums
    |> Enum.filter(fn x -> rem(nums.frequencies(x), 2) == 0 end)
  end

  @doc """
  Codewars kata: Add in missing pipes to collect a range from min to max

  ## Examples

    iex> Trivial.fix_pipe([1, 3, 5])
    [1, 2, 3, 4, 5]

    iex> Trivial.fix_pipe([-1, 6])
    [-1, 0, 1, 2, 3, 4, 5, 6]
  """
  @spec fix_pipe(list) :: list
  def fix_pipe(pipes) do
    Enum.min(pipes)..Enum.max(pipes)
    |> Enum.to_list
  end

  @doc """
  Codewars kata: add length to every word as a list of strings

  ## Examples

    iex> Trivial.add_length("Hello Joe")
    ["Hello 5", "Joe 3"]

  """
  @spec add_length(binary) :: list
  def add_length(str) do
    str
    |> String.split(" ")
    |> Enum.map(fn(x) -> "#{x} #{String.length(x)}" end)
  end
end
