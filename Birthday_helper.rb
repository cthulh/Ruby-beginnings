def read_hash(file)
    #this was googled I admit, a one-liner!!!
    file_hash = Hash[File.read(file).split("\n").map{|i|i.split(",\t")}]
end

def write_file
    #to be able to create a file with names and birthdates
end

Dir.chdir 'C:/Dev/Testing'
puts(read_hash('names.txt'))