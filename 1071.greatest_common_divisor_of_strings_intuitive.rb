# require 'pry'

def gcd_of_strings(str1, str2)
    g = str1.length.gcd(str2.length)
    candidate = str1[0...g]

    if candidate * (str1.length / g) == str1 && candidate * (str2.length / g) == str2
      candidate
    else
     ""
    end
end

# Test cases
puts gcd_of_strings("ABCABC", "ABC") # Output: "ABC"
puts gcd_of_strings("ABABAB", "ABAB") # Output: "AB"
puts gcd_of_strings("LEET", "CODE") # Output: ""
