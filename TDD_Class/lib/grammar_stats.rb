class GrammarStats
    def initialize
      @text_passed = [] 
      @text_checked = [] 
    end
  
    def check(text) 
        fail "Not a sentence!" if text.empty?
        @text_checked << text 
        if starts_with_capital(text) && ends_with_punctuation(text)
            @text_passed << text 
            return true 
          else
              return false
          end  
    end
  
    def percentage_good
        fail "No text has been checked!" if @text_checked.empty?
        percentage = (@text_passed.length)/(@text_checked.length).to_f
        return (percentage * 100).floor
    end

    private
    def starts_with_capital(text)
        return (text[0] == text[0].upcase)
    end
    def ends_with_punctuation(text)
        return(text[-1] =~ /[!?.]/)
    end
  end