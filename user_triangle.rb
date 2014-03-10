require './lib/triangle'

@triangles = []

def main_menu
  puts "Press 'a' for Add a New Triangle, 'l' to list triangles, or 'q' for Quit"

  triangle_choice = gets.chomp

  if triangle_choice == 'a'
    add_triangle
  elsif triangle_choice == 'l'
    list_triangles
  elsif triangle_choice == 'q'
    puts "Goodbye!"
  else
    puts "Wrong button!"
    main_menu
  end
end

def add_triangle
  puts "Enter Side 1"
  s1 = gets.chomp
  puts "Enter Side 2"
  s2 = gets.chomp
  puts "Enter Side 3"
  s3 = gets.chomp
  triangle = Triangle.new(s1,s2,s3)
  @triangles << triangle
  puts "Your triangle is of type: #{triangle.type_test}"
  puts "\n"
  main_menu
end

def list_triangles
  puts "The triangles stored are:"
  i = 1
  @triangles.each do |triangle|
    puts "Triangle #{i} with sides #{triangle.list_sides} is type #{triangle.type_test}"
    i += 1
  end
  puts "\n"
  main_menu
end

main_menu

