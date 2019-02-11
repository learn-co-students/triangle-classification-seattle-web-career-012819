class Triangle
  
  def initialize(*sides)
    if sides.length != 3
      raise TriangleError
    else
      @left, @right, @hyp = sides.sort {|a,b| a <=> b }
    end
  end

  def kind
    if @left + @right <= @hyp
      raise TriangleError
    elsif @left == 0 || @right == 0 || @hyp == 0
      raise TriangleError
    end

    if @left == @right && @right == @hyp
      :equilateral
    elsif @left == @right || @left == @hyp || @hyp == @right
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError; end
end
