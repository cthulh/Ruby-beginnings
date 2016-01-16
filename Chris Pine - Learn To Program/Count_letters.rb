puts 'What\' your first name?'
first_name = gets.chomp
puts 'What\' your middle name?'
middle_name = gets.chomp
puts 'What\' your last name?'
last_name = gets.chomp
puts ''
puts 'Length of your first name = ' + first_name.length.to_s
puts 'Length of your middle name = ' + middle_name.length.to_s
puts 'Length of your last name = ' + last_name.length.to_s
puts 'Length of our full name = ' + (first_name.length+middle_name.length+last_name.length).to_s