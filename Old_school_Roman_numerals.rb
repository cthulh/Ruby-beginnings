# I=1/V=5/X=10/L=50/C=100/D=500/M=1000

def converter(x)
    i=x
    roman_num=[]
    while i!=0
        if i>=1000
            roman_num.push('M')
            i-=1000
        elsif i>=500
            roman_num.push('D')
            i-=500
        elsif i>=100
            roman_num.push('C')
            i-=100
        elsif i>=50
            roman_num.push('L')
            i-=50
        elsif i>=10
            roman_num.push('X')
            i-=10
        elsif i>=5
            roman_num.push('V')
            i-=5
        elsif i>=1
            roman_num.push('I')
            i-=1
        end    
    end
    return roman_num.join('')
end

def ask_for_number
    
    while true
        arabic_num=gets.chomp.to_i
        
        if arabic_num.to_i.to_s==arabic_num.to_s
            return converter(arabic_num)
        else
            puts 'Please enter a valid Arabic number:'
        end
    end
end

puts 'Converter of Arabic numerals to old Roman numerals.'
puts 'Enter an Arabic number:'
puts ask_for_number