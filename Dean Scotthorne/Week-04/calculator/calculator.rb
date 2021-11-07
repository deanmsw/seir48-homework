def show_menu
  puts "Calculator" # TODO: Check out .center to make this look nicer
  puts "=-" * 40 # Budget horizontal dividing line
  puts "[a] - Addition"
  puts "[m] - multiply"
  puts "[d] - division"
  puts "[s] - subtraction"
  puts "[sq] - Square Root"
  puts "[e] - Exponents"
  puts "[q] - Quit"
  print "Enter your choice: "
end

show_menu
menu_choice = gets.chomp.downcase

until menu_choice == 'q'
  case menu_choice
  when 'a'
    puts "You chose Addition!"
    print "How many numbers will you add: "
    print "Choose the first number you want to add: "
    num_to_add1 = gets.to_f

    print "Choose the second number you want to add: "
    num_to_add2 = gets.to_f

    sum_add = num_to_add1 + num_to_add2
      puts "The answer is #{sum_add}"

  when 'm'
    puts "You chose Multiplication"
    print "Choose the number you want to multiply: "
    num_to_multiply1 = gets.to_f
    print "Choose the number you want to multiply by: "
    num_to_multiply2 = gets.to_f

    sum_multiply = num_to_multiply1 * num_to_multiply2
      puts "The answer is #{sum_multiply}"

  when 'd'
    puts "You chose Division"
    print "Choose the number you want to divide: "
    num_to_divide1 = gets.to_f
    print "Choose the number you want to divide by: "
    num_to_divide2 = gets.to_f

    sum_divide = num_to_divide1 / num_to_divide2
      puts "The answer is #{sum_divide}"

  when 's'
    puts "You chose Subtraction"
    print "Choose the number you want to subtract from: "
    num_to_subtract1 = gets.to_f
    print "Choose the number you want to subtract by: "
    num_to_subtract2 = gets.to_f

    sum_subtract = num_to_subtract1 - num_to_subtract2
      puts "The answer is #{sum_subtract}"

  when 'sq'
    puts "You chose Square Root"
    print "Choose the number you want to Square: "
    num_to_square = gets.to_f

    sum_square = num_to_square * num_to_square
      puts "The answer is #{sum_square}"

  when 'e'
    puts "You chose Exponent"
    print "Choose the your first number: "
    num_to_ex1 = gets.to_f
    print "#{num_to_ex1} to the power of: "
    num_to_ex2 = gets.to_f

    sum_ex = num_to_ex1 ** num_to_ex2
      puts "The answer is #{sum_ex}"

  # add additonal `when` clauses for the other menu options
  else
    puts "Invalid selection. You idiot."
  end

  show_menu
  menu_choice = gets.chomp.downcase
end

puts "Thanks for using this crappy calculator."
