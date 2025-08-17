def gcd_of_strings(str1, str2)
    return "" unless (str1 + str2) == (str2 + str1)
    gcd_length = str1.size.gcd(str2.size)
    str1[0...gcd_length]
end

# Test cases
puts gcd_of_strings("ABCABC", "ABC") # Output: "ABC"
puts gcd_of_strings("ABABAB", "ABAB") # Output: "AB"
puts gcd_of_strings("LEET", "CODE") # Output: ""