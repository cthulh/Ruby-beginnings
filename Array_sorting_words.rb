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
puts 'All the entered words in alphabetical order:'
puts(words_array.sort)