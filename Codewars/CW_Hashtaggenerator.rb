def generateHashtag(str)
  return false if str.split(" ").unshift("#").join.to_s.length>140 or str.length==0
  return str.split(" ").unshift("#").each{|i| i.capitalize!}.join.to_s
end

puts generateHashtag("I do not wanted this HAHAHA ha ha")