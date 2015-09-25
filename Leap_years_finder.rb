start_year=0
end_year=0
i=0

puts 'Welcome to the Leap Years Finder Program'.center(50)
while true
    puts 'Enter a start year:'
    start_year = gets.chomp.to_i
    
    if start_year.to_i.to_s != start_year.to_s
        puts 'Start year must be a number.'
    else
        break
    end
end

while true
    puts 'Enter an end year:'
    end_year = gets.chomp.to_i
    
    if end_year.to_i.to_s != end_year.to_s
        puts 'End year must be a number.'
    else
        break
    end
end
puts
puts 'All leap years within the given range:'

i = start_year
    puts i.class.to_s
while i<end_year
    if (i%4==0 && i%100!=0)||(i%100==0&&i%400==0)
        puts i.to_s
    end
i+=1
end
