def shifted_diff(first, second)
	t = first.split("").length
	if first.split("").sort == second.split("").sort
		while t>1
			if second.include? first[0,t-1]
				puts first[0,t-1] if t==2
				return second.index(first[0,t-1])
			else
				t-=1
			end
		end
		return -1
	else
		return -1
	end
end

puts shifted_diff("eecoff","coffee")
puts shifted_diff("isn't","'tisn")
puts shifted_diff("Moose","ooseM")