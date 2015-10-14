class Orange_tree

    def initialize
        @height = 1
        @age = 1
        @oranges = 0
    end
    
    def one_year_later
        @age <= 25 ? @age+=1 : tree_dies
        produce_fruit if @age > 5
        @height+=2
    end
    
    def how_old
        puts "The orange tree is #{@age} years old."
    end
    
    def count_the_oranges
        puts "There are #{@oranges} oranges on the tree."
    end
    
    def pick_an_orange
        if @oranges > 0 
            @oranges-=1
            puts "You have picked 1 delicious orange from the tree. There are #{@oranges} still left from this year."
        else
            puts 'There are no more oranges to pick this year.'
        end
    end
    
    private
        
    def produce_fruit
        puts "#{@oranges} oranges have fallen off the tree from last year."
        @oranges = 1 + 2*(@age-5)
    end
    
    def tree_dies
        puts 'The tree dies of old age.'
        exit
    end

end

mytree = Orange_tree.new
10.times do mytree.one_year_later end
5.times do mytree.pick_an_orange end
mytree.count_the_oranges
mytree.how_old
14.times do mytree.one_year_later end
mytree.count_the_oranges
mytree.how_old
mytree.one_year_later
mytree.how_old
mytree.one_year_later
mytree.how_old