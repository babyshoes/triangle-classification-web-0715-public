
class Triangle
  attr_accessor :type
  attr_reader :side1, :side2, :side3

  VALID_TYPES = [:equilateral, :isosceles, :scalene]

  def initialize(side1, side2, side3)
    arr_of_sides = [side1, side2, side3].sort
    raise TriangleError if side1 <= 0 || side2 <= 0 || side3 <= 0
    raise TriangleError if arr_of_sides[0] + arr_of_sides[1] <= arr_of_sides[2]
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 == @side2 && @side1 == @side3
      self.type = VALID_TYPES[0]
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      self.type = VALID_TYPES[1]
    else
      self.type = VALID_TYPES[2]
    end
  end
end


class TriangleError < StandardError
  def message
    "Not a valid triangle"
  end
end



