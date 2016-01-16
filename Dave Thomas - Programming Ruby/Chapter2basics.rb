####################
2.times do puts end
def say_goodnight(name)
  "Good night, #{name.capitalize}!"
end

puts say_goodnight("trev")
puts say_goodnight("michael")

####################
2.times do puts end

a = [1, 'cat', nil]

puts a.inspect

a[1] = nil
a[2] = 'cat'
a[3] = "someword".split(//).map!{|i| (i == "a" or i == "o" or i == "e") ? i = "X" : i }.join()

puts a.inspect

a.flatten!

puts a.inspect