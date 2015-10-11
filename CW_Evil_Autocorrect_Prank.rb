# to replace all instances of [starts with a space]'you' 'youuuuu'[unlimited numbers of u's][ends with a space] and [starts with a space]'u'[also unlimited repetition][ends with a space] with 'your sister'

def autocorrect(input)
    last= if [".","!",":",";"].include? input.chars.pop
        input.chars.pop
    else
        ""
    end
    input=(input.chars-last.chars).join
input.split(" ").map!{|i|((i.downcase.include? "you" and (i.downcase.chars-"you".chars).length==0 and i.downcase.count("y")==1 and i.downcase.count("o")==1) or (i.downcase.include? "u" and i.chars.length==1)) ? i="your sister" : i }.join(" ")+last
end

puts autocorrect("I miss you")

#just to discover that this can be done with a 1-liner using "gsub" and regex NEED TO LEARN MOOOOORE!