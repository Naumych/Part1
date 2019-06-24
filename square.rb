# frozen_string_literal: true

def square
  puts 'Input base of trianle'
  a = gets.chomp.to_i
  puts 'Input height of trianle'
  h = gets.chomp.to_i
  puts 0.5 * a * h
end

square
