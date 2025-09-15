# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
    broken = broken_letters.chars.to_set
    count = 0
    text.split.each do |word|
      if word.chars.none? { |ch| broken.include?(ch) }
        count += 1
      end
    end
    count
end

puts can_be_typed_words("hello world", "ad") 
puts can_be_typed_words("leet code", "lt")
puts can_be_typed_words("leet code", "e")