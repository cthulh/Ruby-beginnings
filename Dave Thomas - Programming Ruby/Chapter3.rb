class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn , price)
    @isbn = isbn
    @price = Float(price)
  end
  def to_s
  	"ISBN: #{@isbn}, price: #{@price}"
  end
end

b1 = BookInStock.new("isbn1",3)
puts b1
puts "ISBN of book 1 is #{b1.isbn}"
puts "Price of book 1 is #{b1.price}"

puts
b2 = BookInStock.new("isbn2", 3.14)
puts b2


puts
b3 = BookInStock.new("isbn3", 5.67)
puts b3