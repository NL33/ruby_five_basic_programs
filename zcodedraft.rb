#example of basic class in Ruby:

class Rectangle
  def rec_sentence(length, width)
    @length = length
    @width = width
	end

	def awesome? 
		@length + 2 == @width
	end
 end

r = Rectangle.new

r.rec_sentence(5, 7)

puts r.awesome?
