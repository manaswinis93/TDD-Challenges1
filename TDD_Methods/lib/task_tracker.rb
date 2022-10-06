def task_tracker(string)
    fail "Text is empty!" if string.empty?
    if string.include?("#TODO")
    return true
   else
    return false
   end
end