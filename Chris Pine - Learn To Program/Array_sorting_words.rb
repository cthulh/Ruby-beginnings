words_array=[]
i=0

def sort_array some_array
    clone_array=some_array.dup
    sort_recursively clone_array, []
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

def sort_randomly some_array
    clone_array=some_array.dup
    sort_rand clone_array, []
end

def sort_rand start_array, rand_array
    if start_array.length>0
        rand_array.push(start_array[rand(start_array.length)])
        start_array.delete_at(start_array.index(rand_array.last))
        sort_rand start_array, rand_array
    else
        return rand_array
    end
end

def dict_sort some_array
    clone_array=some_array.dup
    dictionary_sort clone_array, []
end

def dictionary_sort start_array, sorted_array
    lowcaps_array=start_array.map {|item| item.downcase}
    if start_array.length>0
        sorted_array.push(start_array[lowcaps_array.index(lowcaps_array.min)])
        start_array.delete_at(start_array.index(sorted_array.last))
        dictionary_sort start_array, sorted_array
    else
        return sorted_array
    end
end

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
puts
puts 'Array of words sorted randomly with a recursive method:'
puts(sort_randomly words_array)
puts
puts 'Array of words dictionary-sorted with a recursive method:'
puts(dict_sort words_array)