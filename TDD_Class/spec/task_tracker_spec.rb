require "task_tracker"
RSpec.describe TaskTracker do
    context "given a task with empty string" do
        it "retruns empty list" do
    reminder = TaskTracker.new
    expect(reminder.add_task("")).to eq []
        end
    end
    context "given a task adds the task to the list" do
        it "retruns list " do
            reminder = TaskTracker.new
            result = reminder.add_task("Walk the dog") 
            expect(result).to eq ["Walk the dog"]       
        end
    end
    context "given multiple tasks adds all the tasks" do
        it "retruns list of tasks " do
            reminder = TaskTracker.new
            reminder.add_task("Walk the dog") 
            result = reminder.add_task("Drink Water") 
            expect(result).to eq ["Walk the dog", "Drink Water"]       
        end
    end
    context "given multiple tasks adds all and removes the task completed" do
        it "retruns list of tasks todo " do
            reminder = TaskTracker.new
            reminder.add_task("Walk the dog")
            reminder.add_task("Drink Water") 
            result = reminder.mark_complete("Drink Water")
            expect(result).to eq ["Walk the dog"]   

        end
    end
    context "given a task that doesn't exist to mark complete" do
        it "fails " do
            reminder = TaskTracker.new
            reminder.add_task("Walk the dog")
            reminder.add_task("Drink Water") 
            expect{reminder.mark_complete("Do laundry")}.to raise_error "No Such task exists!"
                
        end
    end
end