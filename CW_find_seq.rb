def length_of_sequence(arr,n)
    if !arr.include? n or arr.length == 1 or arr.count(n)>2
      return 0
    else
      arr[arr.index(n),arr[arr.index(n)+1,arr.length-1].index(n)+arr.index(n)+1].length
    end
end

puts [1,2,3].length
puts length_of_sequence([1, 1], 1)