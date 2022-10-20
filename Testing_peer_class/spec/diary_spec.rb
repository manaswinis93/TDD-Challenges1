require "diary"
RSpec.describe Diary do
    it "constructs " do
        entry = Diary.new("contents")
        expect(entry.read).to eq "contents"
    end
end