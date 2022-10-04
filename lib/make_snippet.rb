def make_snippet(text)
    string = text.split(" ")
    if string.length <= 5
        return text
  else
     text_first_five = string[0,5].join(" ")
     return text_first_five + "..."
  end
end