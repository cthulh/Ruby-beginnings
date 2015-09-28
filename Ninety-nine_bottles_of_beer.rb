def english_number number
    if number<0
        return 'Please enter number that isn\'t negative.'
    end
    if number==0
        return 'zero'
    end
    
    num_string = ''
    ones_place=['one','two','three','four','five','six','seven',
        'eight','nine']
    tens_place=['ten','twenty','thirty','fourty','fifty','sixty',
        'seventy','eighty','ninety']
    teenagers=['eleven','twelve','thirteen','fourteen','fiveteen',
        'sixteen','seventeen','eighteen','nineteen']
    
    left = number
    
    write = left/1000000000
    left = left - write*1000000000
    if write>0
        billions = english_number write
        num_string = num_string + billions + ' billion'
        if left>0
            num_string = num_string + ' '
        end
    end
    
    write = left/1000000
    left = left - write*1000000
    if write>0
        millions = english_number write
        num_string = num_string + millions + ' million'
        if left>0
            num_string = num_string + ' '
        end
    end
    
    write = left/1000
    left = left - write*1000
    if write>0
        thousand = english_number write
        num_string = num_string + thousand + ' thousand'
        if left>0
            num_string = num_string + ' '
        end
    end    
    
    write = left/100
    left = left - write*100
    if write>0
        hundreds = english_number write
        num_string = num_string + hundreds + ' hundred'
        if left>0
            num_string = num_string + ' '
        end
    end
    
    write = left/10
    left = left - write*10
    
    if write>0
        if ((write == 1) and (left>0))
            num_string = num_string + teenagers[left-1]
            left = 0
        else
            num_string = num_string + tens_place[write-1]
        end
        
        if left>0
            num_string = num_string + '-'
        end
    end
    
    write = left
    left = 0
    
    if write>0
        num_string = num_string + ones_place[write-1]
    end
    
    num_string
end

def beer_run bottles
    verse1a = " bottles of beer on the wall, "
    verse1b = " bottles of beer.
Take one down, pass it around, "
    verse1c = " bottles of beer on the wall..."
    last_verse = "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, " + english_number(99) + " bottles of beer on the wall..."
    i = bottles
    while true
    
        if i>2
            puts english_number(i).capitalize + verse1a + english_number(i) + verse1b + english_number(i-1) + verse1c
            puts
        elsif i==2
            puts english_number(i).capitalize + verse1a + english_number(i) + verse1b + english_number(i-1) + " bottle of beer on the wall..."
            puts
        elsif i==1
            puts "One bottle of beer on the wall, one bottle of beer. 
Take one down, pass it aroud, no more bottles of beer on the wall..."
            puts
        else
            puts last_verse
            break
        end
    
        i-=1
    end
end

puts 'How many bottles of beer?'
while true
    beer_num = gets.chomp
    if beer_num.to_i.to_s == beer_num.to_s
        beer_num=beer_num.to_i
        beer_run beer_num
        break
    else
        puts 'It needs to be an integer!'
    end
end