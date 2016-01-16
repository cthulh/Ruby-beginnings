def unused_digits(*numbers)
    #takes numbers as arguments and returns digits that have not been used in the numbers provided
    digits = [0,1,2,3,4,5,6,7,8,9]
    numbers.map!{|i| i.to_i.to_s.split("")}.flatten!
    return digits.delete_if{|it| numbers.include? it.to_s}.join("")
end
