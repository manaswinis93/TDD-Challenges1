#To get input from IO - we use gets
#To give output to IO - we use puts /p/print
#we write them without using any object because it
#is usually implicit

#class Greeter
#    def greet
#     puts "What is your name?"
#      name = gets.chomp
#      puts "Hello, #{name}!"
#    end
#  end

#Kernel is a special object in Ruby that provides 
#a number of special methods like gets and puts.
#class Greeter
#    def greet
#      Kernel.puts "What is your name?"
#      name = Kernel.gets.chomp
#      Kernel.puts "Hello, #{name}!"
#    end
#  end

#Now that we have Kernel in there, we can 
#create a double for it. We're going to call it @io 

class Greeter
    def initialize(io)
      @io = io
    end
  
    def greet
      @io.puts "What is your name?"
      name = @io.gets.chomp
      @io.puts "Hello, #{name}!"
    end
  end
  
  
  
  # If we want to run `Greeter` for real, we do it like this
  # greeter = Greeter.new(Kernel)
  # greeter.greet