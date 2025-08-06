# require 'pry'

def merge_alternately(word1, word2)
    merged_str = ""
    i = 0
    word1_len = word1.length
    word2_len = word2.length

    min_len = [word1_len, word2_len].min

    while i < min_len
      merged_str += word1[i]
      merged_str += word2[i]
      i += 1
    end

    merged_str = merged_str + word1[min_len..-1]
    merged_str = merged_str + word2[min_len..-1]

    merged_str
end

# Example usage:
word1 = "abc"
word2 = "pqr"
puts merge_alternately(word1, word2)
