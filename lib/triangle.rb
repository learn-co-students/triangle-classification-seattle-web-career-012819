class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    a2 = @a*@a
    b2 = @b*@b
    c2 = @c*@c

    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    elsif (a2 + b2 < c2) || (a2 + c2 < b2) || (b2 + c2 < a2)
      puts "a2: #{a2}, b2: #{b2}, c2: #{c2}"
       raise TriangleError
    else
      if @a == @b && @b == @c
        return :equilateral
      elsif (@a == @b && @a != @c) || (@a == @c && @a != @b) || (@b == @c && @b != @a)
        return :isosceles
      elsif @a != @b && @a != @c && @b != @c
        return :scalene
      else
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
    def message
      "YOU DONE GOOFED SON - TRIANGLE ERROR"
    end
  end
end
