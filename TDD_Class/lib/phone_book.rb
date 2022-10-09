class PhoneBook
    def initialize
        @numbers = []
    end
    def extract_numbers(text)
    text.scan(/[0-9]{11}/).each do |str|
        @numbers << str
    end
    @numbers.uniq!   
    end
    def list
        return @numbers
    end
end