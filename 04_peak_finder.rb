# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(array)
    new_arr = []

    if array[0] > array[1]
        new_arr << array[0]
    end
    
    (1...array.length - 1).each do |i|
        if array[i-1] < array[i] && array[i] > array[i + 1]
            new_arr <<  array[i]
        end
    end

    if array[-1] > array[array.length - 2]
        new_arr << array[-1]
    end

    return new_arr
end

p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
