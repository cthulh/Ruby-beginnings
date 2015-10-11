def unique_in_order(iterable)
    arr=[]
    iterable=iterable.split("") if iterable.to_s == iterable
    
    iterable.each do |i|
         arr.length==0? arr.push(i) : arr.push(i) if i!=arr.last
    end
    arr
end

puts unique_in_order('AAAAABBBBBBCCCCAAAA')
