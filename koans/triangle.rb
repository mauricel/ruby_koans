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

# Triangle Inequality Theorem
# sum of any two sides must be greater than the length of the third
def is_triangle(a, b, c)
  return true if (a + b) > c && (a + c) > b && (b + c) > a
  false
end

def triangle(a, b, c)
  raise TriangleError unless is_triangle(a, b, c)

  return :equilateral if a == b && b == c
  return :scalene unless a == b || b == c || a == c
  return :isosceles if (a == b) ^ (b == c) ^ (a == c)
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
