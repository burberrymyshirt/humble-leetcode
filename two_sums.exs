defmodule Solution do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    nums
    |> Enum.with_index()
    |> Enum.reduce_while(
      %{},
      fn {num, i}, lookup ->
        diff = target - num

        case Map.get(lookup, diff) do
          nil ->
            {:cont, Map.put(lookup, num, i)}

          found_num ->
            {:halt, [found_num, i]}
        end
      end
    )
  end
end

IO.inspect(Solution.two_sum([2, 7, 11, 15], 9))
