require 'pry'

class Triangle

  attr_accessor :side1, :side2, :side3, :type

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @type
  end

  def kind
    validate?
  if self.is_equilateral?
     @type = :equilateral
   elsif  self.is_isosceles?
     @type = :isosceles
   else
      @type = :scalene
    end
  end

  def is_equilateral?
   @side1 == @side2 && @side2 == @side3
  end

  def is_isosceles?
   @side2 == @side3 || @side1 == @side3 || @side1 == @side2
  end

#no longer required
  # def is_scalene?
  #
  # end

  def validate? # stole validate method from solutions
    real_triangle = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
    [side1, side2, side3].each { |s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
  end

end

#
