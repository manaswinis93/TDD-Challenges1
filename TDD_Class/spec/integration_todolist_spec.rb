require "todo_list"
require "todo"
RSpec.describe "integration" do
    context "given a todo to add" do
        it "it adds todo to the list" do
            list = TodoList.new
            task = Todo.new("Drink Water")
            list.add(task)
            expect(list.incomplete).to eq [task]
        end
        it "it adds multiple todos to the list" do
            list = TodoList.new
            task_1 = Todo.new("Go for a walk")
            task_2 = Todo.new("Take a break")
            list.add(task_1)
            list.add(task_2)
            expect(list.incomplete).to eq [task_1, task_2]
        end
    end

    describe "testing complete method behaviour" do  
      context "when list contains a single task" do 
              list = TodoList.new
              task_1 = Todo.new("Go for a walk") 
              list.add(task_1)    
        it "returns empty list when there are no completed tasks " do
            expect(list.complete).to eq []
        end
        it "it returns list of completed tasks" do
            task_1.mark_done!
            expect(list.complete).to eq [task_1]
        end
        it "it returns list of incompleted tasks" do
            expect(list.incomplete).to eq []
        end
      end
      context "when list contains multiple tasks" do
            list = TodoList.new
            task_1 = Todo.new("Go for a walk") 
            task_2 = Todo.new("Take a break")
            task_3 = Todo.new ("Drink Water")
            list.add(task_1)
            list.add(task_2)
            list.add(task_3)      
        it "returns list of completed tasks " do
            task_1.mark_done!
            task_2.mark_done!
            expect(list.complete).to eq [task_1, task_2]
        end
        it "it returns list of incompleted tasks" do
            expect(list.incomplete).to eq [task_3]
        end
      end

    end
    describe "testing give_up! method behaviour" do
        context "when a list of single task is given " do
            list = TodoList.new
                task_1 = Todo.new("Go for a walk")
                list.add(task_1)
                list.give_up!
            it " given a list is marked completed, incomplete retruns nil" do
                expect(list.incomplete).to eq []
            end
            it " given a list is marked completed, complete retruns task list" do
                expect(list.complete).to eq [task_1]
            end
        end
        context "when a list of  multiple tasks is given " do
            list = TodoList.new
              task_1 = Todo.new("Go for a walk")
              task_2 = Todo.new("Take a break")
              list.add(task_1)
              list.add(task_2)
              list.give_up!
           it " given a list is marked completed, incomplete retruns nil" do
             expect(list.incomplete).to eq []
           end
           it " given a list is marked completed, complete retruns task list" do
             expect(list.complete).to eq [task_1, task_2]
           end
        end
    end

end
      