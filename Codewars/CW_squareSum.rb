def squareSum(numbers)
    numbers.inject{|sum,n| sum+n*n}
end

puts squareSum([1,2,2])