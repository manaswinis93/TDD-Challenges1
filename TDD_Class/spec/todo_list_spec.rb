require "todo_list"
RSpec.describe TodoList do
    context "Initially" do
        it "has an empty list of incomplete tasks" do
            task = TodoList.new
            expect(task.incomplete).to eq []
        end
        it "has an empty list of complete tasks" do
            task = TodoList.new
            expect(task.complete).to eq []
        end
        it "fails to mark complete when list of tasks is empty" do
            task = TodoList.new
            expect{ task.give_up! }.to raise_error "No task exists to mark complete!"
        end
    end
end