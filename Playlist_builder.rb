Dir.chdir 'c:/Dev/Testing'
songs = Dir['c:/**/*.mp3']

filename = 'Playlist.m3u'

File.open filename, 'w' do |f| 
    
    songs.each do |song|
            f.write song + "\n"
    end

end