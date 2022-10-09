require "todo_list"
RSpec.describe TodoList do
    context "given no tasks " do
        it "returns empty list" do
            todo = TodoList.new
            expect(todo.all).to eq []
        end
    end
end