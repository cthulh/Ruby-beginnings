def bday_count(some_date)
    bdate = some_date.to_s[0,10]
    byear = bdate[0,4].to_i
    bmonth = bdate[5,2].to_i
    bday = bdate[8,2].to_i
    cdate = Time.new.to_s[0,10]
    cyear = cdate[0,4].to_i
    cmonth = cdate[5,2].to_i
    cday = cdate[8,2].to_i
    
    if cmonth < bmonth or (cmonth == bmonth and cday<bday)
        return cyear-byear-1
    else
        return cyear-byear
    end
end

puts 'Welcome to a birthday spanking program!'.center(50)
puts
print 'What year were you born:'
byear = gets.chomp.to_i
print 'What month were you born on:'
bmonth = gets.chomp.to_i
print 'What day of the month were you born on:'
bday = gets.chomp.to_i

puts('Your date of birth: ' + Time.gm(byear,bmonth,bday).to_s[0,10])
puts('You have already had ' + bday_count(Time.gm(byear,bmonth,bday)).to_s + ' birthdays!')
