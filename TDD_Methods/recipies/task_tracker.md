## 1. Describe the Problem 
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.
## 2. Design a Method Signature
*** name of the method task_tracker(text) 
this method takes string as an argument and returns true if it includes a string #TODO else returns false 
## 3. Create Examples as Tests
#1 =>
 task_tracker(" ") --- context "when string is empty"
it fails 
#2 =>
task_tracker("#TODO Drink water") 
context "given a string that includes #TODO"
it returns true
#3 =>
task_tracker("Take a break")
context "given a string that doesn't include #TODO"
it returns false



