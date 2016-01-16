def length_of_sequence(arr,n)
    if arr.length == 1 or arr.count(n)!=2
      return 0
    else
      return 1+arr.rindex(n)-arr.index(n)
    end
end