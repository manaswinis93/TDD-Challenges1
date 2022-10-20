require "diary"
require "diary_entry"
RSpec.describe "Integration" do
    context "given mutilple entries" do
        it "returns the no of words in the list" do
            diary = Diary.new
            diary.add(DiaryEntry.new("title", "Hello lazy people!"))
            diary.add(DiaryEntry.new("title", "Hello busy people!"))
            expect(diary.count_words).to eq 6
        end
    end
end
