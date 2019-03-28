# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) - This method calls my reverse_words method, which was O(n). It then runs an in-place reversal of the string, which is also O(n) where n is the length of the string.
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  reverse_words(my_sentence)

  i = 0
  j = my_sentence.length - 1

  until i == my_sentence.length / 2
    let_temp = my_sentence[i]
    my_sentence[i] = my_sentence[j]
    my_sentence[j] = let_temp

    i += 1
    j -= 1
  end
end

def reverse_words(my_words)
  i_start = 0
  i_end = 0

  until i_start >= (my_words.length - 1)
    until (my_words[i_end] == " ") || (i_end == my_words.length)
      i_end += 1
    end

    i = 0
    until i == (i_end - i_start) / 2
      low_index = i_start + i
      high_index = i_end - 1 - i

      let_temp = my_words[low_index]
      my_words[low_index] = my_words[high_index]
      my_words[high_index] = let_temp

      i += 1
    end

    i_start = i_end + 1
    i_end += 1
  end
end
