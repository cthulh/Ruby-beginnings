days = 356
secs = 60
mins= 60
hours = 24
puts "There are " + (days*hours).to_s + " hours in a year."
puts "There are " + (100 * days * 24 * 60).to_s + " minutes in a decade."
puts "I am " + (30 * days * hours * mins * secs).to_s + " seconds old."
puts "At the time of writing his book, Chris pine was 1160 million seconds old, which makes him " + (1160000000/(mins*hours*days*secs)).to_s + " years old."