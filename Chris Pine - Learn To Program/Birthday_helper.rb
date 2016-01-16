require 'date'
def read_hash(file)
    #this was googled I admit, a one-liner!!!
    return file_hash = Hash[File.read(file).split("\n").map{|i|i.split(",\t")}]
end

def ask_for_bday(fname,lname)
    datafile = read_hash('names.txt')
    return datafile["#{fname} #{lname}"]
end

def ask_for_next_bday(fname,lname)
    #calculate how many days to next birth day
    bday = ask_for_bday(fname,lname)
    #current day
    cdate = Time.new.to_s[0,10]
    cyear = cdate[0,4].to_i
    cmonth = cdate[5,2].to_i
    cday = cdate[8,2].to_i
    #if they haven't had birthday this year yet
    if Time.gm(cyear,bday[3,2],bday[0,2])>Time.gm(cyear,cmonth,cday)
        #return seconds between birthdate this year and todays date divided by seconds in a day = days between dates
        return (Time.gm(cyear,bday[3,2],bday[0,2])-Time.gm(cyear,cmonth,cday))/(60*60*24)
    else
        #if they already had birthday this year
        #return seconds between birth date next year and todays date divided by seconds in a day = days between dates
        return (Time.gm(cyear+1,bday[3,2],bday[0,2])-Time.gm(cyear,cmonth,cday))/(60*60*24)
    end
end

def ask
    puts
    printable_hash = read_hash('names.txt')
    puts 'Names in the data file:'
    printable_hash.each do |k, v|
        puts "[#{k} #{v}]" 
    end
    while true
    puts 'Enter first name of the person you\'d like to get birthday info on:'
    name = gets.chomp.capitalize
    puts 'Enter their surname:'
    sname = gets.chomp.capitalize
        if !printable_hash.has_key?("#{name} #{sname}")
            puts 'Enter a name from a data file printed above!'
        else 
            break
        end
    end
    puts 'Options:'
    while true
        puts '[D] number of days until next birthday , [B] show birthday'
        choice = gets.chomp[0,1].capitalize
        if choice == "D"
            puts "There are #{ask_for_next_bday(name,sname).to_i} days left until their next birthday!"
        break
        elsif choice == "B"
            puts "Their birthday is: #{ask_for_bday(name,sname)}"
        break
        else
            puts 'Not a valid option.'
        end
    end
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



