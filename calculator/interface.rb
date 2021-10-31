require_relative 'Simple_Calculator.rb'
#call upon our backend method
require 'pry-byebug'

print "---------------"
print "Welcome to our Simple Math Calculator"
print "---------------"

#Initiate a loop
loop do
    puts "Please insert a number"
    number1 = gets.chomp
        until number1 =~ /\A\d+\Z/
            puts "Please print a valid number"
            number1 = gets.chomp       
        end
    puts "Please insert another number"
    number2 = gets.chomp
        until number2 =~ /\A\d+\Z/
            puts "Please print a valid number" 
        end
    #calculate them
    puts "Please choose the operator [+] [-] [/] [*]"
    operator = gets.chomp
        until operator =~ /\A[+-\/*]\Z/
            puts "Please choose one of the aformetioned operators"
            operator = gets.chomp
        end
    puts math(number1.to_i, number2.to_i, operator)
 
    puts "Do you want to continue? Y/n"
    answer = gets.chomp
    break if answer == "n"
end
puts "Turning off"