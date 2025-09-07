# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
    result = [];

    num_pairs = n / 2;
    (1..num_pairs).each do |i|
        result << i;
        result << -i;
    end
    result << 0 if n.odd?;
    result
end

p sum_zero(5);
p sum_zero(4)
p sum_zero(2);
p sum_zero(0);
p sum_zero(1);
