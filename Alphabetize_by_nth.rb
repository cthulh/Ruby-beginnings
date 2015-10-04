def sort_it(list_, n)

    clone_list = list_.tr(" ","").split(",").dup
    org_list = list_.split(", ").dup
    letters = clone_list.map {|word| word[n-1,1]}
    sorted = []
    puts
    puts clone_list.to_s
    puts
    puts letters.to_s
  while clone_list.length != 0
    sorted.push(org_list[letters.index(letters.min)])
    org_list.delete_at(letters.index(letters.min))
    letters.delete_at(letters.index(letters.min)) 
  end
  sorted_string = sorted.join(", ")
  return sorted_string
end

puts sort_it("be, rreeee, hhh, koko, lpoe, dsa",2)
puts
puts sort_it("Ulrich Kesler, Arthur von Streit, Ernst von Eisenach, August Samuel Wahlen, Neidhardt Muller, Theodor von Lucke, Fritz Josef Bittenfeld, Paul von Oberstein, Emil von Secla, Karl Robert Steinmetz, Reinhard von Lohengramm, Helmut Rennenkampf, Oskar von Reuenthal, Wolfgang Mittermeyer, Anton Ferner, Siegfried Kircheis", 7)