# frozen_string_literal: true

def ideal_weight
  puts "What's your name"
  name = gets.chomp
  puts 'How tall are you'
  height = gets.chomp.to_i
  if (height - 110) <= 0
    puts 'Your weight are perfect'
  else
    puts "Hey, #{name}! Your ideal weight id #{height - 110}"
  end
end

ideal_weight
