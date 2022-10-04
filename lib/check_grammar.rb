def check_grammar(string)
        fail "Not a sentence!" if string.empty?
        if starts_with_capital(string) && ends_with_punctuation(string)
          return true 
        else
            return false
        end
end
def starts_with_capital(text)
    return (text[0] == text[0].upcase)
end
def ends_with_punctuation(text)
    return(text[-1] =~ /[!?.]/)
end
