# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  sides = [a, b, c]
  unique_sides = sides.uniq

  # Side cannot be 0 or negative
  raise TriangleError if [a, b, c].min <= 0

  # Two sides must always be greater than the third
  raise TriangleError if a + b <= c || b + c <= a || a + c <= b

  # WRITE THIS CODE
  if unique_sides.length == 1
    return :equilateral
  end
  if unique_sides.length == 2
    return :isosceles
  end
  if unique_sides.length == 3
    return :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
