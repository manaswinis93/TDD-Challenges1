def get_most_common_letter(text)
    counter = Hash.new(0)
    p "counter at the start is #{counter} "
    text.chars.each do |char|
      counter[char] += 1 if char != " "
    end
    p "counter after loop is #{counter}"
    p "Most common letter is :"
    counter.to_a.sort_by { |k, v| -v }[0][0]
    
  end

  p get_most_common_letter("the roof, the roof, the roof is on fire!")
  
  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
  