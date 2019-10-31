# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    arr = str.split("")
    new_arr = []
    i = 0
    
    arr.each_with_index do |let, idx|
        i = 1 if i == 0

        if arr[idx] == arr[idx + 1]
            i += 1
        elsif i != 1
            new_arr << i
            new_arr << arr[idx -  1]
            i = 0
        else
            new_arr << let
        end
    end
    
    new_arr.join
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
