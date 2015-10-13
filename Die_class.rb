class Die
    def initialize
        roll
    end
    
    def roll
        @number_showing = 1 + rand(6)
    end
    
    def showing
        @number_showing
    end
    
    def cheat(n)
        (n>0 and n<= 6) ? @number_showing = n : self.roll
    end
    
end

die = Die.new
puts die.showing
die.roll
puts die.showing
die.cheat(5)
puts die.showing
die.cheat(1)
puts die.showing
die.cheat(2)
puts die.showing
die.cheat(3)
puts die.showing
die.cheat(99)
puts die.showing

