some_arr=["Aaron","ben","123","AAron","AARON","1a","1AA","BEN","bEN"]
lowcaps_arr=some_arr.map {|item| item.downcase}
other_arr=some_arr.map { |item|
    if rand(101)%2==0
        item.upcase
    else
        item.reverse
    end
    }
puts some_arr.to_s
puts
puts lowcaps_arr.to_s
puts
puts lowcaps_arr.sort.to_s
puts
puts other_arr.to_s