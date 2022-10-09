class Diary
    def initialize
     @entries = []
    end
    def add(entry) 
        @entries << entry
    end
    def list
       return @entries
    end
    def pick_readable_entry(wpm, min)
      fail "Reading speed should be positive!" if wpm < 0 
      return readable_entries(wpm,min).max_by(&:word_count)
      

    end
    def number_diary
        return @entries.flat_map(&:extract_numbers).uniq
    end

    private

    def readable_entries(wpm,min)
        return @entries.filter do |entry|
            entry.reading_time(wpm) <= min
        end
    end
     
    

    
end