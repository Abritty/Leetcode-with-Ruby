# @param {String} s
# @return {Integer}
def max_freq_sum(s)
  vowels = "aeiou"
  freq_map = s.chars.tally
  
  max_vowel_freq = 0
  max_consonant_freq = 0
  freq_map.each do |char, freq|
    if vowels.include?(char)
      max_vowel_freq = [max_vowel_freq, freq].max
    else
        max_consonant_freq = [max_consonant_freq, freq].max
    end
  end

  max_vowel_freq + max_consonant_freq
end
# Example usage
input_string = "successes"
result = max_freq_sum(input_string)
puts "Result: #{result}"
