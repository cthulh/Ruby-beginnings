#return "(" for single occurances and ")" for duplicates
def duplicate_encode(word)
  rtn =[]
  word.split(//).each{|i| word.count(i)>1 ? rtn.push(")") : rtn.push("(") }
  return rtn.join.to_s
end

puts duplicate_encode("recede")
puts duplicate_encode("prototype")