# Phone Numbers Class Design Recipe
## 1. Describe the Problem
___Put or write the user story here. Add any clarifying notes you might have.

> As a user 
> So that I can keep track of my phone numbers
> I want to keep a record of all phone numbers I use in my entries

## 2. Design the Class Interface
___Include the initializer and public methods with all parameters and return values.

```ruby
#EXAMPLE

class PhoneBook
  def initialize
  end
  def extract_numbers(text) # text is a string representing journal entry
    #Returns nothing
  end
  def list 
      #Returns a list of strings representing phone numbers
  end
end
```
## 2. Design the Class Interface

Make a list of examples of how the class will behave in different situations

```ruby
# 1
   phone_book = PhoneBook.new
   phone_book.list # => []

# 2
  phone_book = PhoneBook.new
   phone_book.extract_numbers("07123456789")
   phone_book.list # => ["07123456789"]

# 3
  phone_book = PhoneBook.new
   phone_book.extract_numbers("I was calling my friend 07800000000 the other day")
   phone_book.list # => ["07800000000"]  

# 4 => multiple entries 
  phone_book = PhoneBook.new
   phone_book.extract_numbers("My faves:  07800000000, 07800000001 ")
   phone_book.list # => ["07800000000", "07800000001"]  

# 5 => only text no number 
  phone_book = PhoneBook.new
   phone_book.extract_numbers("My faves:")
   phone_book.list # => [] 
 # 6 => multiple entries through multiple calls
  phone_book = PhoneBook.new
   phone_book.extract_numbers("My friend Nag is 07800000000")
   phone_book.extract_numbers("My friend Sou is 07800000001 ")
   phone_book.list # => ["07800000000", "07800000001"]   
   # 7 => too few digits  
  phone_book = PhoneBook.new
   phone_book.extract_numbers("My faves: 07800000")
   phone_book.list # => [] 

# 8 => no duplicates
  phone_book = PhoneBook.new
   phone_book.extract_numbers("My friend Nag is 07800000000")
   phone_book.extract_numbers("My friend Sou is 07800000000 ")
   phone_book.list # => ["07800000000"] 

   




