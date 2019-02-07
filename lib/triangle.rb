class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  @@all = []

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
    @@all << self
  end

  def self.all
    @@all
  end

  def kind
    if @x <= 0 || @y <= 0 || @z <= 0
      begin
        raise TriangleError
      end
    end

    if @x + @y <= @z || @x + @z <= @y || @y + @z <= @x
      begin
        raise TriangleError
      end
    end

    if @y == @z && @z == @x && @x == @y
      return :equilateral
    elsif
      @y != @x && @z != @x && @z != @y
      return :scalene
    else
      return :isosceles
    end
  end



    class TriangleError < StandardError
    end


end
