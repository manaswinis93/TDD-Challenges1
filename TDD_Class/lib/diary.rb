# File: lib/diary.rb
class Diary
    def initialize
        @entries = []
    end
  
    def add(entry) 
        @entries << entry
    end
  
    def all
      return @entries
    end
  
    def count_words
#       return @entries.map do |entry|
#        entry.count_words
#       end.sum
      return @entries.sum(&:count_words)
    end
  
    def reading_time(wpm)
        fail "Reading time should be above zero" unless wpm > 0
        return (count_words/wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          readable_entries(wpm,minutes).max_by(&:count_words)     
    end

  private
    def readable_entries(wpm, minutes)
      return @entries.filter do |entry|
        entry.reading_time(wpm) <= minutes
      end
    end
end