# frozen_string_literal: true

def quadratic_equation_calculation
  variables = input_variables
  discriminant = calculate_discriminant(variables)
  puts discriminant.inspect
  put_answer discriminant, variables
end

def put_answer(discriminant, variables)
  negative_discriminant?(discriminant) ||
    positive_discriminant?(discriminant, variables) ||
    zero_discriminant?(discriminant, variables)
end

def negative_discriminant?(discriminant)
  message = "It's discriminant: #{discriminant}.
  There are no roots"
  puts message if discriminant.negative?
end

def positive_discriminant?(discriminant, variables)
  message =  "It's discriminant: #{discriminant}.
  It's first root: #{calculate_first_root discriminant, variables},
  it's second root: #{calculate_second_root discriminant, variables}."
  puts message if discriminant.positive?
end

def zero_discriminant?(discriminant, variables)
  message = "It's discriminant: #{discriminant}.
  It's first root: #{calculate_one_root variables}"
  puts message if discriminant.zero?
end

def calculate_discriminant(variables)
  variables[1]**2 - 4 * variables[0] * variables[2]
end

def input_variables
  puts 'Input a, b, c'
  a = gets.chomp.to_f
  b = gets.chomp.to_f
  c = gets.chomp.to_f
  [a, b, c]
end

def calculate_first_root(discriminant, variables)
  (Math.sqrt(discriminant) - variables[1]) / 2.0 * variables[0]
end

def calculate_second_root(discriminant, variables)
  (-Math.sqrt(discriminant) - variables[1]) / 2.0 * variables[0]
end

def calculate_one_root(variables)
  - variables[1] / 2.0 * variables[0]
end

quadratic_equation_calculation
