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

def shuffle list
    s_list = list.dup
    5.times do
        shuffled = []
        r_id = 0
        l_id = s_list.length/2
        while shuffled.length<s_list.length
            if shuffled.length%2 == 0
                shuffled.push(s_list[r_id])
                r_id+=1
            elsif
                shuffled.push(s_list[l_id])
                l_id+=1
            end
        end
        s_list = shuffled
    end
    shuffled = []
    cut_point = rand(s_list.length)
    top_pile = s_list[cut_point,s_list.length-cut_point]
    top_pile.each {|card| shuffled.push card}
    bottom_pile = s_list[0,cut_point]
    bottom_pile.each {|card| shuffled.push card}   
    
    return shuffled
end
puts 'Searching for mp3 files...'
filename = 'Playlist.m3u'
Dir.chdir 'c:/Dev/Testing'
songs = Dir['c:/**/*.mp3']
puts "Found #{songs.length} mp3 songs on the C drive."
puts
puts 'Copying songs into playlist'
puts
while true
    puts 'Press [S] for Shuffling, [R] for Random order or [N] for Normal order.'
    selected_order = gets.chomp.upcase
    if selected_order == "S"
        list_of_songs = shuffle songs
        break
    elsif selected_order == "R"
        list_of_songs = sort_randomly songs
        break
    elsif selected_order == "N"
        list_of_songs = songs
        break
    end
end

File.open filename, 'w' do |f| 
    
    list_of_songs.each do |song|
            f.write song + "\n"
            print '.'
    end
end
puts
