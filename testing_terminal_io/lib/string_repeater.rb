#string_repeater = StringRepeater.new(Kernel)
#string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX

class StringRepeater
    def initialize(io)
        @io = io
    end

    def run
        @io.puts "Hello. I will repeat a string many times."
        @io.puts "Please enter a string"
        string = gets_string
        @io.puts "Please enter a number of repeats"
        num = gets_num
        @io.puts "Here is your result:"
        string_repeat(string, num)
    end

    private

    def gets_num
        number = @io.gets.chomp
        boolean = ((number.to_i.to_s == number) && (number.to_i > 0))
        fail "You must enter a Positive Number!" unless boolean
        return number.to_i 
     end
    
     def gets_string
        string = @io.gets.chomp
        boolean = (string.to_i.to_s != string)
        fail "You must enter a Sting!" unless boolean
        return string
        
     end

     def string_repeat(string, num)
        return @io.puts string*num
     end



end

#string_repeater = StringRepeater.new(Kernel)
#string_repeater.run