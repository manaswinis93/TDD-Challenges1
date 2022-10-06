## 1. Describe the Problem 
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design a Method Signature 
estimate_reading_time(string) - takes string of words 
as arguments and returns the reading time in minutes based on the number of words in string.

## 3. Create Examples as Tests
1. context "When the string is empty"
    it "returns zero" 
    result =  estimate_reading_time(text)
     expect(result).to eq 0
2. context "When the string has words less than 200"
    it "returns 1" 
    result =  estimate_reading_time(text)
     expect(result).to eq 1
3. context "When the string has 200 words"
    it "returns 1" 
    result =  estimate_reading_time(text)
     expect(result).to eq 1
4. context "When the string has 500 words"
    it "returns 2" 
    result =  estimate_reading_time(text)
     expect(result).to eq 2
5. context "When the string has 5000 words"
    it "returns 25" 
    result =  estimate_reading_time(text)
     expect(result).to eq 25



## 4. Implement the Behaviour 
