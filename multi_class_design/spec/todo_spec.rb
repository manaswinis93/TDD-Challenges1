require "todo"
RSpec.describe Todo do
    context "given an empty task" do
        it "fails" do
            text = Todo.new("")
            expect{text.task}.to raise_error "task is empty!"
        end
    end
end