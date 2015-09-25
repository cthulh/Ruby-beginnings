verse1a = " bottles of beer on the wall, "
verse1b = " bottles of beer.\n
Take one down, pass it around, "
verse1c = " bottles of beer on the wall..."
last_verse = "No more bottles of beer on the wall, no more bottles of beer.\n
Go to the store and buy some more, 99 bottles of beer on the wall..."
i = 99
while i!=0
    
    if i>1
        puts i.to_s + verse1a + i.to_s + verse1b + i.to_s + verse1c
    elsif i=1
        puts last_verse
    end
    
i-=1
end