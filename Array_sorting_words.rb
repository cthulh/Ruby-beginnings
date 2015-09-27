def sort_array some_array
    sort_recursively some_array, []
end

def sort_recursively start_array, sorted_array
    if start_array.length>0
        sorted_array.push(start_array.min)
        start_array.delete_at(start_array.index(start_array.min))
        sort_recursively start_array, sorted_array
    else
        return sorted_array
    end
end



words_array=[]
i=0
puts 'Enter a number of words into an array or press ENTER to finish.'
while true
    i+=1
    puts 'Enter word number '+i.to_s+':'
    aword=gets.chomp
    if aword!=""
        words_array.push(aword)
    else
        puts
        puts 'A total of '+(i-1).to_s+' word(s) have been entered into the array.'
        puts
        break
    end
end
puts 'Array of words sorted with a ".sort" method:'
puts(words_array.sort)
puts
puts 'Array of words sorted with a recursive method:'
puts(sort_array words_array)