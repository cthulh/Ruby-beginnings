PROFILE_ON = true

def profile block_description, &block

if PROFILE_ON
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	puts "#{block_description}: #{duration} seconds"
else
	block.call
end

end

profile 'which are even' do 
	
	[1,2,3,4,5].each do |i|
	rtn=[]
	if i%2==0
		rtn<<i
	end
	puts rtn
end
end