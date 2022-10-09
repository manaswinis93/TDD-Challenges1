## 1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com


Also design the interface of each class in more detail.
```ruby
class Diary
def initialize
 --- entries
 end
 def add(entry) #entry is an instance of DiaryEntry
   #adds the entries to the list
 end
 def list
   #returns the list of entries
   end
  def pick_readable_entry(wpm, min)
  #select best readable entry based on reading speed and available time
  end
  def number_diary
  #extract numbers from diary entries
  end
  end

  class DiaryEntry
    def initialize(title, contents)
     @title = title
     @contents = contents
     end
     def title
     return @title
     end
     def contents
     return @contents
     end
end
 
 class TodoList
 def initialize
 # initializes list of tasks
 end
 def add(task) --- #task is an instance TODO
  #adds tasks to the todo_list
  end
  def list
  return todo_list
  end
  end

  class Todo
  def initialize(task)
    @task = task
    end
    def task
    return @task
    end
    end

    ```
```   
##  3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

#1 =>
adds diary entries and returns a list of diary entries
diary = Dairy.new
entry_1 = DiaryEntry.new("title", "Ahoy there!")
entry_2 = DiaryEntry.new("title", "How are you?")
diary.add(entry_1)
diary.add(entry_2)
expect(diary.list).to eq [entry_1, entry_2]

#2 =>
selects readable entry for the given time
diary = Dairy.new
entry_1 = DiaryEntry.new("title", "Ahoy!")
entry_2 = DiaryEntry.new("title", "Ahoy there!")
entry_3 = DiaryEntry.new("title", "How are you?")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
diary.pick_readable_entry(3,1) => entry_3

#3 => 
given entries not readable within time it should
return nil
diary = Dairy.new
entry_3 = DiaryEntry.new("title", "where are you from?")
diary.add(entry_3)
diary.pick_readable_entry(3,1) => []

#4 =>
selects nearest readable entry  available for the given time
diary = Dairy.new
entry_1 = DiaryEntry.new("title", "Ahoy!")
entry_2 = DiaryEntry.new("title", "Ahoy there!")
diary.add(entry_1)
diary.add(entry_2)
diary.pick_readable_entry(3,1) => entry_2

given invalid wpm it should fail wpm shoulbe be above zero
diary = Dairy.new
entry_1 = DiaryEntry.new("title", "Ahoy!")
entry_2 = DiaryEntry.new("title", "Ahoy there!")
diary.add(entry_1)
diary.add(entry_2)
diary.pick_readable_entry(-3,1) => fail "Reading speed should be positive"

#5 =>
given entry with multiple numbers it should return list of phone_numbers

diary = Dairy.new
entry_1 = DiaryEntry.new("title", "Nagaraju is available at 07123456789")
entry_2 = DiaryEntry.new("title", " My friends are 07123456789, 07123456788, 0780000")
diary.add(entry_1)
diary.add(entry_2)
diary.number_diary => ["07123456789", "07123456788"]

#6 =>
given tasks it should add and return the list of tasks
task_list = TodoList.new
task_1 = Todo.new("Drink water")
task_2 = Todo.new("Take a break")
task_list.list => ["Drink water", "Take a break"]



#Unit Test cases
DIARY ::
#  =>


# =>
when no entry is given pick_readable_entry returns nil
diary = Dairy.new
diary.pick_readable_entry(3,1) => []







