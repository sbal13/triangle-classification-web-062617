require 'pry'





class Triangle
  attr_accessor :type, :legs

  def initialize(leg1, leg2, leg3)

  	@legs = [leg1, leg2, leg3]

  end

  def kind
  		if !valid_triangle?
  			raise TriangleError 
  		else
	  		if equilateral?
	  			type = :equilateral
	  		elsif isosceles?
	  			type = :isosceles
	  		else
	  			type = :scalene
	  		end
	  	end
  end



  private

  def valid_triangle?
  	(@legs[0] < @legs[1] + @legs[2]) && (@legs[1] < @legs[0] + @legs[2]) && (@legs[2] < @legs[1] + @legs[0]) && @legs.none? {|leg| leg <= 0}
  end

  def equilateral?
  	@legs.uniq.length == 1
  end

  def isosceles?
  	@legs.uniq.length == 2
  end

end


class TriangleError < StandardError

end


