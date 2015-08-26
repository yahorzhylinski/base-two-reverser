def base_two_neg_reverser(array)

  # => The empty sequence and [0] represents [0].
  if array.empty? || array == [0]
    return [0]
  end

  # => expected worst-case space complexity is O(M),
  result = []
  change_next_element = false

  # => expected worst-case time complexity is O(M);
  # => to resolve this task i use only one iteration
  array.each_with_index do | element, index |

    result[index] = element

    # => if input number is negative we have to make it positive(add the biggest rank)
    if element == 1 && index == array.size - 1 && change_next_element == false
      result << 1
      break
    end

    # => if previous element was 1 we have to change current element
    if change_next_element == true
      result[index] ^= 1
      change_next_element = false
      next
    end

    # => if current el is 1 we have to change next
    if element == 1
      change_next_element = true
    end

  end

  # => if last element will be 0 can make the result smaller
  result.pop if result[-1] == 0

  result
end