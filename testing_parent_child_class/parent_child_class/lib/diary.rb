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
    def count_words
      return  @entries.map do |entry|
        entry.count_words
      end.sum
    end
end