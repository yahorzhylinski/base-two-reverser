def base_two_neg_reverser(array)

  # => The empty sequence represents 0.
  if array.empty? || array == [0]
    return [0]
  end

  change_next_element = false
  result = []
  array.each_with_index do | element, index |

    result[index] = element

    if element == 1 && index == array.size - 1 && change_next_element == false
      result << 1
      break
    end

    if change_next_element == true
      result[index] ^= 1
      change_next_element = false
      next
    end

    if element == 1
      change_next_element = true
    end

  end

  result.pop if result[-1] == 0

  result
end