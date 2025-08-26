require 'pry'

def area_of_max_diagonal(dimensions)
    max_dia_sq = 0
    max_area = 0
    dimensions.each do |length, width|
        dia_sq = length**2 + width**2
        area = length * width
        if dia_sq > max_dia_sq
            max_dia_sq = dia_sq
            max_area = area
        elsif dia_sq == max_dia_sq
            max_area = [max_area, area].max
        end
    end
    max_area
end

# Example usage:
dimensions = [[4, 6], [3, 7], [2, 8], [8, 2]]
puts area_of_max_diagonal(dimensions)
