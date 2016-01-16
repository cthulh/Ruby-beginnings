def shifted_diff(first, second)
	t = first.split("").length
	#return -1 if !first.split("").sort == second.split("").sort
	return 0 if first==second
		while t>0
			if second.include? first[0,t-1] and second[second.index(first[0,t-1]),second.length-1]<<second[0,second.index(first[0,t-1])]==first
				return second.index(first[0,t-1])
			else
				t-=1
			end
		end
		return -1
end

puts shifted_diff("eecoff","coffee")
puts shifted_diff("isn't ","'t isn")
puts shifted_diff("Moo se","Moo se")
puts shifted_diff("dog","god")