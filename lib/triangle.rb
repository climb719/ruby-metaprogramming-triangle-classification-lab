class Triangle
  attr_accessor :firts_side, :second_side, :third_side
  
  def initialize(firts_side, second_side, third_side)
    @firts_side = firts_side
    @second_side = second_side
    @third_side = third_side
  end

  def kind
    # if firts_side + second_side < third_side || firts_side <= 0 || second_side <= 0 || third_side <= 0
    #   begin
    #     raise TriangleError
    
    #    rescue TriangleError => error
    #      puts error.message
    #    end
    if firts_side == second_side && second_side == third_side
      :equilateral
    elsif firts_side == second_side || second_side == third_side || firts_side == third_side
      :isosceles
    elsif firts_side != second_side && second_side != third_side && firts_side != third_side
      :scalene
    # else  
      
      
    end

  end

  class TriangleError < StandardError
    # "Illegal traingle"
  end


end
