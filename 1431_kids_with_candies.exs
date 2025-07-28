defmodule Solution do
  @spec kids_with_candies(candies :: [integer], extra_candies :: integer) :: [boolean]
  def kids_with_candies(candies, extra_candies) do
    h = Enum.max(candies)

    Enum.reduce(candies, [], fn c, return ->
      [process(c, extra_candies, h) | return]
    end) |> Enum.reverse()
  end

  def process(c, ec, h) when c + ec < h, do: false
  def process(_c, _ec, _h) , do: true
end

IO.inspect(Solution.kids_with_candies([2, 3, 5, 1, 3], 3))
