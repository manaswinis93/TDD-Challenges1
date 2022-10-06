## 1. Describe the Problem 
> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design a Method Signature 
...RUBY
Check_grammar(text) -- takes a string as an argument and returns true or false 

## 3. Create Examples as Tests
#1 => 
check_grammar(" ")
 it fails "Not a sentence!"
#2 => 
check_grammar("Hello, I am Manu.")
it returns true
#3 => 
check_grammar("Hello, I am Manu")
it returns false
#4 => 
check_grammar("hello, I am Manu.")
it returns false
#5 => 
check_grammar("HELLO, I am Manu.")
it returns true
#6 => 
check_grammar("Hello, I am Manu!")
it returns true
#7 => 
check_grammar("Hello, I am Manu?")
it returns true
#8 =>
check_grammar("Hello, I am Manu,")
it returns false

