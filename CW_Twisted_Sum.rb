def solution(n)
	sum=0
  	(0..n).each{|i| i.to_s.split(//).each{|e| sum+=e.to_i}}
  	sum
end

puts solution(10)
puts solution(11)
puts solution(12)