# @param {Integer[]} nums
# @return {Integer}
def max_frequency_elements(nums)
    freq_hash = Hash.new(0)
    max_freq = 0
    times = 0

    nums.each do |num|
      freq_hash[num] +=1
      freq = freq_hash[num]

      if freq > max_freq
         max_freq = freq
         times = 1
      elsif freq == max_freq
         times += 1
      end
    end

    return max_freq * times
end

nums1 = [1, 2, 2, 3, 1, 4]
puts max_frequency_elements(nums1)

nums2 = [1, 2, 3, 4, 5]
puts max_frequency_elements(nums2)

nums3 = [1, 2, 3, 4, 5, 5, 5]
puts max_frequency_elements(nums3)
