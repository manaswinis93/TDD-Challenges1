1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.
> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.
```ruby

# EXAMPLE

class TaskTracker
  def initialize
       @task_list = []
    # ...
  end

  def add_task(task) # task is a string
    # add todo task
    #retruns list of todo tasks
  end

  def mark_complete(task)
    # mark the task complete --- remove the task from todo list
    # Return the updated list
  end
end
```


## 3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
given a task with empty string retruns nothing
reminder = TaskTracker.new
reminder.add_task("Walk the dog") => []

# 2
given a task adds the task to the list 
reminder = TaskTracker.new
reminder.add_task("Walk the dog") => ["Walk the dog"]


# 3
given multiple tasks adds all the tasks to the list 
reminder = TaskTracker.new
reminder.add_task("Walk the dog")
reminder.add_task("Drink Water")=> ["Walk the dog", "Drink Water"]

# 4
given multiple tasks adds all and removes the task completed  
reminder = TaskTracker.new
reminder.add_task("Walk the dog")
reminder.add_task("Drink Water")
reminder.mark_complete("Drink Water")=> ["Walk the dog"]

# 5
given a task that doesn't exist to mark complete
it fails 
reminder = TaskTracker.new
reminder.add_task("Walk the dog")
reminder.add_task("Drink Water")
reminder.mark_complete("Do Laundry") => "No Such task exists!"



4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.