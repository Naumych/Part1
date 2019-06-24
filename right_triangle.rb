# frozen_string_literal: true

def right_triangle
  triangle_sides = input_triangle_sides
  triangle_sides.sort!
  triangle_sides = triangle_sides.map { |item| item**2 }
  puts triangle_sides

  puts "It's not a triangle" if triangle(triangle_sides)
  puts 'RIGHT' if right(triangle_sides)
  puts 'Isosceles' if isosceles(triangle_sides)
end

def triangle(triangle_sides)
  triangle_sides[0] + triangle_sides[1] < triangle_sides[2]
end

def right(triangle_sides)
  triangle_sides[0] + triangle_sides[1] == triangle_sides[2]
end

def isosceles(triangle_sides)
  triangle_sides[0] == triangle_sides[1]
end

def input_triangle_sides
  puts 'Input 1-st, 2-nd and 3-rd triangle side'
  a = gets.chomp
  b = gets.chomp
  c = gets.chomp
  triangle_sides = []
  triangle_sides.push(a.to_f, b.to_f, c.to_f)
end

right_triangle
