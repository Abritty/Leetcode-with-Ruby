def max_sub_array(nums)
    max_sum = nums[0]
    current_sum = nums[0]

    (1...nums.length).each do |i|
        current_sum = [nums[i], current_sum + nums[i]].max
        max_sum = [max_sum, current_sum].max
    end

    max_sum
end

# Test cases
if __FILE__ == $0
    # Example test case
    nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
    puts "Maximum subarray sum: #{max_sub_array(nums)}" # Expected output: 6
end
