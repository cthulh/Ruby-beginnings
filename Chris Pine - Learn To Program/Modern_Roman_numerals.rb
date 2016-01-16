# I=1/V=5/X=10/L=50/C=100/D=500/M=1000
#1-10s: 1,2,3=add/4=subtr from 5/ 5=own/6,7,8=add/9= subtr from 10
#11-100s:10,20,30=add/40=subt from 50=own/60,70,80=add/90=butr from 100
#100-1000:100,200,300=add/400=subtr from 500own/600,700,800=add/900=subt from 1000
#

def converter(x)
    i=x
    roman_num=[]
    while i!=0
        if i/1000>0
            roman_num.push('M'*(i/1000))
            i-=i-i%1000
        elsif i/100>0
            if i/100<4
                roman_num.push('C'*(i/100))
                i-=i-i%100
            elsif i/100==4
                roman_num.push('CD')
                i-=400
            elsif i/100==5
                roman_num.push('D')
                i-=500
            elsif ((i/100)>5 && (i/100)<9)
                roman_num.push('D')
                i-=500
                roman_num.push('C'*(i/100))
                i-=i-i%100
            elsif i/100==9
                roman_num.push('CM')
                i-=900
            end
        elsif i/10>0
            if i/10<4
                roman_num.push('X'*(i/10))
                i-=i-i%10
            elsif i/10==4
                roman_num.push('XL')
                i-=40
            elsif i/10==5
                roman_num.push('L')
                i-=50
            elsif ((i/10)>5 && (i/10)<9)
                roman_num.push('L')
                i-=50
                roman_num.push('X'*(i/10))
                i-=i-i%10
            elsif i/10==9
                roman_num.push('XC')
                i-=90
            end
        else 
            if (i>=1 && i<4)
                roman_num.push('I'*i)
                i=0
            elsif i==4
                roman_num.push('IV')
                i=0
            elsif i==5
                roman_num.push('V')
                i=0
            elsif (i>5 && i<9)
                roman_num.push('V')
                i-=5
                roman_num.push('I'*i)
                i=0
            else
                roman_num.push('IX')
                i=0
            end
        end
    end
    return roman_num.join('')
end

def ask_for_number
    
    while true
        arabic_num=gets.chomp.to_i
        
        if arabic_num.to_i.to_s==arabic_num.to_s
            if (arabic_num<=3000 && arabic_num>=1)
                return converter(arabic_num)
            else
                puts 'The number must be between 1 and 3000.'
            end
        else
            puts 'Please enter a valid Arabic number:'
        end
    end
end

puts 'Converter of Arabic numerals to old Roman numerals.'
puts 'Enter an Arabic number between 1 and 3000:'
puts ask_for_number