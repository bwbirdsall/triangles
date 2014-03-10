class Triangle
  def initialize(s1, s2, s3)
    @s1 = s1.to_i
    @s2 = s2.to_i
    @s3 = s3.to_i
  end

  def type_test
    if @s1 >= @s2 + @s3 || @s2 >= @s1 + @s3 || @s3 >= @s2 + @s1
      return "Not a triangle!"
    elsif @s1 == @s2 && @s1 == @s3
      return "equilateral"
    elsif @s1 == @s2 || @s2 == @s3 || @s1 == @s3
      return "isosceles"
    else
      return "scalene"
    end
  end

  def list_sides
    "#{@s1}, #{@s2}, #{@s3}"
  end
end
