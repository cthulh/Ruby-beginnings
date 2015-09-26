
main_title="Table of Contents"
table_of_content=[["Chapter 1:","Getting started","Page 1"],["Chapter 2:","Numbers","Page 9"],["Chapter 3:","Letters","Page 23"]]
puts
puts(main_title.center(50))
puts
table_of_content.each do |chapter|
    puts(chapter[0].ljust(13)+chapter[1].ljust(30)+chapter[2])
end