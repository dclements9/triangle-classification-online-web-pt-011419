class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  def kind
    if @side_a <1 || @side_b <1 || @side_c <1 || (@side_a + @side_b) <= @side_c || (@side_a+ @side_c) <= @side_b || (@side_b+@side_c) <= @side_a
      raise TriangleError
    elsif @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_c == @side_a
      :isosceles
    else
      :scalene
    end
  end
    class TriangleError < StandardError
   end
end
