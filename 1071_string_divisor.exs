defmodule Solution do
  @spec gcd_of_strings(str1 :: String.t(), str2 :: String.t()) :: String.t()
  def gcd_of_strings(str1, str2) when str1 <> str2 != str2 <> str1, do: ""

  def gcd_of_strings(str1, str2) do
    gcd = gcd(String.length(str1), String.length(str2))

    String.slice(str1, 0..(gcd - 1))
  end

  def gcd(a, 0), do: a

  def gcd(a, b), do: gcd(b, Kernel.rem(a, b))
end

IO.inspect(String.length("dinmorerdumm"))
