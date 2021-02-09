class Triangle
  attr_accessor :firts_side, :second_side, :third_side
  
  def initialize(firts_side, second_side, third_side)
    @firts_side = firts_side
    @second_side = second_side
    @third_side = third_side
  end

  def kind
    if  firts_side <= 0 || second_side <= 0 || third_side <= 0
         raise TriangleError
    elsif firts_side + second_side <= third_side || second_side + third_side <= firts_side || firts_side + third_side <= second_side
        raise TriangleError
       end
    if firts_side == second_side && second_side == third_side
      :equilateral
    elsif firts_side == second_side || second_side == third_side || firts_side == third_side
      :isosceles
    elsif firts_side != second_side && second_side != third_side && firts_side != third_side
      :scalene
    end

  end

  class TriangleError < StandardError
 
  end


end
