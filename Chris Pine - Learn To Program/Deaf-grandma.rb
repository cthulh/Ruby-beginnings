puts 'You enter your grandma\'s room where she sits awaiting your response with a little trumpet-looking device at her ear.'
while true
    puts 'What do you say to your grandma:'
    puts

    your_response = gets.chomp
    year=1900+rand(40)
    
    if your_response == 'BYE BYE BYE'
        puts 'Grandma:"YES, I KNOW I KNOW..."'
        break
    elsif your_response != your_response.upcase
        puts 'Grandma:"HUH?! SPEAK UP, SONNY!"'
    else
        puts 'Grandma:"NO, NOT SINCE '+year.to_s+'!"'
    end 
end