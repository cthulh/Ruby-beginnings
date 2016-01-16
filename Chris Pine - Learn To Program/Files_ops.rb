def if_exists filename
    if File.exist?(filename)
        filename = "Copy of #{filename}" 
        filename = if_exists filename
    end
    filename
end

Dir.chdir 'C:/Dev/Testing2'

file_names = Dir['C:/Dev/Testing/*.txt']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{file_names.length} files: "

file_num = 1

file_names.each do |name|
    print '.'
    new_name = if file_num<10
        "#{batch_name}0#{file_num}.txt"
    else
        "#{batch_name}#{file_num}.txt"
    end
    
    new_name = if_exists new_name

    File.rename name, new_name
    file_num = file_num + 1
end

puts
puts 'Done!'