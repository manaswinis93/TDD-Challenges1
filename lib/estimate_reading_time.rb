def estimate_reading_time(string)
    text = string.split(" ")
    return (text.length/200.to_f).ceil
end