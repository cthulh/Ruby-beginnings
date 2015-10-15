verse1a = " bottles of beer on the wall, "
verse1b = " bottles of beer.
Take one down, pass it around, "
verse1c = " bottles of beer on the wall...\n\n"
last_verse = "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall..."
i = 99
while i!=0
    
    if i>2
        puts i.to_s + verse1a + i.to_s + verse1b + (i-1).to_s + verse1c
    elsif i==2
        puts i.to_s + verse1a + i.to_s + verse1b + (i-1).to_s + " bottle of beer on the wall...\n\n"
    elsif i==1
        puts last_verse
        break
    end
    #just a comment = test of new git connection
    
i-=1
end