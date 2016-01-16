def ask(question)
    while true
        puts question
        reply=gets.chomp.downcase
        
        if (reply=='yes' || reply=='no')
            if reply=='yes'
                return true
            else
                return false
            end
            break
        else
            puts 'Please answer either "yes" or "no".'
        end 
    end
end

puts 'Hello, and thank you for participating in this psych test. It\'s about Mexican food, and has nothing to do with wetting bed.'
puts

ask('Do you like eating tacos?')
ask('Do you like eating burritos?')
ask('Do you like eating chimichangas?')
ask('Do you like eating sopapillas?')
wets_bed=ask('Do you wet your bed?')
puts 'Just a few more questions.'
ask('Do you like eating horchata?')
ask('Do you like eating flautas?')

puts
puts 'DEBRIEFING:'
puts 'Thank you again for your participation in the Mexican food test.'
puts
puts wets_bed
