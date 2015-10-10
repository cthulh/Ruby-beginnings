#function to sum all absolute value of digits of the passed number
def sumDigits(number)
    sum=0
    number.to_s.split("").each{|i|i=="-"? next : sum+=i.to_i}
    return sum
end


puts sumDigits(-35)