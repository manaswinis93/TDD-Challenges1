class DiaryEntry
     def initialize(title, contents)
     @title = title
     @contents = contents
     @numbers = []
     end

     def title
     return @title
     end

     def contents
     return @contents
     end
     
     def word_count
        return @contents.split(" ").length 
     end

     def reading_time(wpm)
        fail "Reading time should be above zero" if wpm < 0
        return (word_count/wpm.to_f).ceil
     end

     def extract_numbers
        @contents.scan(/[0-9]{11}/).each do |str|
            @numbers << str
        end
        end


end