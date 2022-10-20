

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1

class InteractiveCalculator
    def initialize(io)
        @io = io
    end
    def run
        @io.puts "Hello. I will subtract two numbers."
        @io.puts "Please enter a number"
        num1 = gets_num
        @io.puts "Please enter another number"
        num2 = gets_num
        @io.puts "Here is your result:"
        @io.puts print_sum(num1, num2)
    end


 private

 def gets_num
    number = @io.gets.chomp
    boolean = (number.to_i.to_s == number)
    fail "You must enter a number!" unless boolean
    return number.to_i
 end
 def print_sum(num1, num2)
    diff = num1 - num2
    return "#{num1} - #{num2} = #{diff}"
 end
end


#interactive_calculator = InteractiveCalculator.new(Kernel)
#interactive_calculator.run

