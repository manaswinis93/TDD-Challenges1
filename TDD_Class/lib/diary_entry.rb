class DiaryEntry
    def initialize(title, contents) 
      @title = title
      @contents = contents
      @furthest_word_read = 0
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      return 0 if @contents.empty?
      return words.length
    end
  
    def reading_time(wpm) 
        fail "Reading time should be above zero" unless wpm > 0
      return (count_words/wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes) 
        fail "Reading time should be above zero" unless wpm > 0
        no_of_readable_words = wpm * minutes
        start_frm = @furthest_word_read
        end_at = @furthest_word_read + no_of_readable_words
        readable_words = words[start_frm, end_at]
        if end_at >= count_words
            @furthest_word_read = 0 
        else
            @furthest_word_read = end_at
        end
        return readable_words.join(" ")
    end

    private
    def words
        return @contents.split(" ")
    end
  end