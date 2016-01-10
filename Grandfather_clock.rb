def clock &block

	Time.new.hour>12 ? hour=Time.new.hour-12 : Time.new.hour ==0 ? hour=12 : hour=Time.new.hour;
	hour.times do block.call end

end

clock do 
	puts "DONG!"	
end