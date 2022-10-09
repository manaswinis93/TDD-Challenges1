require "todo"
RSpec.describe Todo do
    context "given a task" do
      it "fails if string is empty" do
        task = Todo.new("")
        expect{ task.task }.to raise_error "Task is empty!"
      end
      it "returns the task as a string" do
        task = Todo.new("Drink water")
        expect(task.task).to eq "Drink water"
      end
    end
    context "mark done and done behaviour" do
      it "fails if the string is empty" do
      task = Todo.new("")
      expect{ task.mark_done! }.to raise_error "Task is empty!"
      end
      it "fails if the string is empty" do
      task = Todo.new("")
      expect{ task.done? }.to raise_error "Task is empty!"
      end
      it "retruns true if the todo is marked done" do
      task = Todo.new("Drink water")
      task.mark_done!
      expect(task.done?).to eq true
      end
      it "retruns true if the todo is marked done" do
        task = Todo.new("Drink water")
        expect(task.done?).to eq false
      end
    end


end