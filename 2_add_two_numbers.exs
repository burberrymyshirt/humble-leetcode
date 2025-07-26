# Definition for singly-linked list.
#
defmodule ListNode do
  @type t :: %__MODULE__{
          val: integer,
          next: ListNode.t() | nil
        }
  defstruct val: 0, next: nil
end

defmodule Solution do
  @spec add_two_numbers(l1 :: ListNode.t() | nil, l2 :: ListNode.t() | nil) :: ListNode.t() | nil
  def add_two_numbers(l1, l2) do
    process(l1, l2, 0)
  end

  defp process(nil, nil, 0), do: nil

  defp process(nil, nil, carry), do: %ListNode{val: carry, next: nil}

  defp process(l1, l2, carry) do
    val1 = if !is_nil(l1), do: l1.val, else: 0
    val2 = if !is_nil(l2), do: l2.val, else: 0

    val = val1 + val2 + carry
    carry = Kernel.div(val, 10)
    val = Kernel.rem(val, 10)

    next1 = if !is_nil(l1), do: l1.next, else: nil
    next2 = if !is_nil(l2), do: l2.next, else: nil

    %ListNode{
      val: val,
      next: process(next1, next2, carry)
    }
  end
end
