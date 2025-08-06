def merge_alternately(word1, word2)
    merged_string = ""
    i, j = 0, 0

    while i < word1.length || j < word2.length
        merged_string += word1[i] if i < word1.length
        merged_string += word2[j] if j < word2.length
        i += 1
        j += 1
    end

    merged_string
end


word1 = "abc"
word2 = "pqr"
puts merge_alternately(word1, word2)
