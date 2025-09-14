# @param {Integer} n
# @return {Integer[]}
def get_no_zero_integers(n)
  # A helper function to check if a number is a "no-zero" integer.
  # A number is "no-zero" if its string representation does not contain the digit '0'.
  is_no_zero = lambda { |num| num.to_s.include?('0') == false }

  # Iterate through possible values for 'a' starting from 1.
  # Since 'a' and 'b' must be positive, 'a' can range from 1 to n-1.
  (1...n).each do |a|
    b = n - a
    
    # Check if both 'a' and 'b' are "no-zero" integers.
    if is_no_zero.call(a) && is_no_zero.call(b)
      # If they are, we've found a valid pair. Return them as an array.
      return [a, b]
    end
  end
end

p get_no_zero_integers(2);    # Output: [1, 1]
p get_no_zero_integers(11);   # Output: [2, 9]
p get_no_zero_integers(100);  # Output: [1, 99]
