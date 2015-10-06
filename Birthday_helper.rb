require 'date'
def read_hash(file)
    #this was googled I admit, a one-liner!!!
    return file_hash = Hash[File.read(file).split("\n").map{|i|i.split(",\t")}]
end

def ask_for_bday(fname,lname)
    datafile = read_hash('names.txt')
    return datafile["#{fname} #{lname}"]
end

def ask_for_next_bday
    #calculate how many days to next birth day

end

def ask
    #wrap both ask functions
end

def write_file
    writer = File.open('names.txt','a')
    puts
    puts 'Data entry mode'.center(50)
    puts 
    while true
        puts 'Enter a first name:'
        first_name = gets.chomp.capitalize
        break if first_name == ''
        puts 'Enter last name:'
        last_name = gets.chomp.capitalize
        break if last_name == ''
        while true
            puts 'Enter a valid date of birth (in format DDMMYYYY):'
            bdate = gets.chomp
            break if bdate == ''
            break if Date.valid_date? bdate[4,4].to_i, bdate[2,2].to_i, bdate[0,2].to_i
        end
        writer.write("#{first_name} #{last_name},\t#{bdate[0,2]}/#{bdate[2,2]}/#{bdate[4,4]}\n") 
        break
    end
    writer.close
end

Dir.chdir 'C:/Dev/Testing'

puts
while true
    puts 'Press E to enter data or A to access data from file:'
    choice = gets.chomp.capitalize[0,1]
    if choice == 'E'
        write_file
        break
    elsif choice == 'A'
        ask
        break
    end
end
end



