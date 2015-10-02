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

filename = 'Playlist.m3u'
Dir.chdir 'c:/Dev/Testing'
songs = Dir['c:/**/*.mp3']
puts "Found #{songs.length} mp3 songs on the C drive."
print 'Copying songs into playlist'
randomized_songs = sort_randomly songs

File.open filename, 'w' do |f| 
    
    randomized_songs.each do |song|
            f.write song + "\n"
            print '.'
    end

end
puts
