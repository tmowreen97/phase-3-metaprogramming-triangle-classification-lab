require 'pry'


class Triangle
  attr_accessor :a, :b, :c
  # write code here
  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind 
    # binding.pry
    @a, @b, @c = [@a, @b, @c].sort
    raise TriangleError if @a <= 0 or @a+@b <=@c
    return :equilateral if @a == @c
    return :isosceles if @a == @b or @b == @c
    return :scalene
  end
    # if @l1 == 0 || @l2 == 0 || @l3 == 0
    #   raise TriangleError
    # elsif @l1 < 0 || @l2 <0 || @l3 <0
    #   raise TriangleError
    # elsif @l1 == @l2 && @l2 == @l3
    #   :equilateral
    # elsif @l1 == @l2 || @l2 == @l3 || @l1 == @l3
    #   :isosceles
    # elsif @l1 != @l2 && @l2 != @l3 && @l1 != @l3
    #   :scalene
    # elsif @l1 + @l2 > @l3 && @l1 + @l3 > @l2 && @l2 + @l3 > @l1
    #   raise TriangleError 
    # end


  class TriangleError < StandardError
  end
end

t1 = Triangle.new(2,2,2)
t2 = Triangle.new(0,0,0)
t3 = Triangle.new(2,4,2)
# binding.pry
