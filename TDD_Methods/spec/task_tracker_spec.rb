require "task_tracker"
RSpec.describe "task_tracker method" do
     context "when string is empty" do
      it "fails" do
      expect{ task_tracker("") }.to raise_error "Text is empty!"
      end
    end
    context "given a string that includes #TODO" do
    it "returns true" do
        result = task_tracker("#TODO Drink water")
        expect(result).to eq true
    end
    end
    context "given a string that doesn't include #TODO" do
    it "returns false" do
        result = task_tracker("Take a break")
        expect(result).to eq false
    end
    end

end