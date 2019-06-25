# frozen_string_literal: true

def right_triangle_check
  triangle_sides = fetch_triangle_sides
  triangle_sides.sort!
  triangle_sides = triangle_sides.map { |item| item**2 }

  return puts "It's not a triangle" if triangle?(triangle_sides)

  puts 'right triangle' if right_triangle?(triangle_sides)
  puts 'isosceles triangle' if isosceles_triangle?(triangle_sides)
end

def triangle?(triangle_sides)
  triangle_sides[0] + triangle_sides[1] < triangle_sides[2]
end

def right_triangle?(triangle_sides)
  triangle_sides[0] + triangle_sides[1] == triangle_sides[2]
end

def isosceles_triangle?(triangle_sides)
  triangle_sides[0] == triangle_sides[1]
end

def fetch_triangle_sides
  puts 'Input 1-st, 2-nd and 3-rd triangle side'
  a = gets.chomp.to_f
  b = gets.chomp.to_f
  c = gets.chomp.to_f
  [a, b, c]
end

right_triangle_check
