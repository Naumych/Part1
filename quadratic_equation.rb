def quadratic_equation

    puts 'Input a'    
    a = gets.chomp.to_f
    puts 'Input b'
    b = gets.chomp.to_f
    puts 'Input c'
    c = gets.chomp.to_f
    discriminant = b**2 - 4*a*c
    if discriminant<0
        return puts "It's discriminant - #{discriminant}. There are no roots"
    end

    if discriminant>0
        first_root = (Math.sqrt(discriminant) - b)/2.0*a
        second_root = (-Math.sqrt(discriminant) - b)/2.0*a
        puts "It's discriminant - #{discriminant}. It's first root - #{first_root}, it's second root #{second_root}."
    elsif discriminant==0
        one_root = - b/2.0*a
        puts "It's discriminant - #{discriminant}. It's first root - #{one_root}"
    end
        
end
quadratic_equation