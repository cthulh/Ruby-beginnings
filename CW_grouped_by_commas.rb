#FAIL
def solution(n)
    arr1=n.to_s.chars
    arr2=[]
    n=3
    while true
        if n<arr1.length
            arr2.push([arr1[-n,3]]) 
            n+=3
        else 
            arr2.push(arr1[0,arr1.length-(n-3)])
            break
        end
    end
    arr2.join(",")
end

puts solution(120000000000000)