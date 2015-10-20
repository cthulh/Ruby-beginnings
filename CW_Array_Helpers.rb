#add to class Array methods: square(), cube(), average(), sum(), even() and odd().

class Array

  def square
  	@sq = map{|x| x}
  	@sq.map!{|i| i*i}
  end

  def cube
  	@cb = map{|x| x}
  	@cb.map!{|i| i*i*i}
  end

  def average
  	@av = map{|x| x}
  	@av.inject(:+)/@av.length
  end

  def sum
  	@sm = map{|x| x}
  	@sm.inject(:+)
  end

  def even
  	@ev = map{|x| x}
  	@ev.delete_if {|i| i%2!=0}
  end

  def odd
  	@od = map{|x| x}
  	@od.delete_if {|i| i%2==0}
  end

end

rrr = Array.new
(0..15).each{|i| rrr.push(i)}
puts rrr.to_s
puts rrr.square
puts rrr.cube
puts rrr.average
puts rrr.sum
puts rrr.even
puts rrr.odd
