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
  if self.is_equilateral?
     @type = :equilateral
   elsif  self.is_isosceles?
     @type = :isosceles
   elsif self.is_scalene?
      @type = :scalene
    else
        raise TriangleError
      end
  end

  def is_equilateral?
   @side1 == @side2 && @side2 == @side3
  end

  def is_isosceles?
   @side2 == @side3 || @side1 == @side3 || @side1 == @side2
  end

  def is_scalene?
    @side1 != @side2 && @side2 != @side3 && @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2
  end

  def inequality?
    @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2
  end

  class TriangleError < StandardError
  end

end

#
Pry.start
