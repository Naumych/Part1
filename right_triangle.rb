def right_triangle
  puts 'Input 1-st triangle side'    
  a = gets.chomp
  puts 'Input 2-nd triangle side'
  b = gets.chomp
  puts 'Input 3-rd triangle side'
  c = gets.chomp
  arr = []
  arr.push(a.to_f, b.to_f, c.to_f)
  arr.sort!
  puts arr
  arr = arr.map {|item| item = item**2}
  puts arr

if arr[0]+arr[1]<arr[2]
 return puts "I need triangle asshole"
end
  if arr[0]+arr[1]==arr[2]
    puts "RIGHT"
    if arr[0]==arr[1]
      puts "isosceles"
    end
  end
  
end
right_triangle