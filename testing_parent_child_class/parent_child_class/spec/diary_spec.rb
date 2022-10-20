require "diary"
RSpec.describe Diary do
    context "given entries to add" do
        it "returns the list of entries added" do
            diary = Diary.new
            entry_1 = double :diary_entry
            entry_2 = double :diary_entry
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.list).to eq [entry_1, entry_2]
        end
    end
    context "given entries to add" do
        it "returns the no of words in the list" do
            diary = Diary.new
            diary.add(double :diary_entry, count_words: 3)
            diary.add(double :diary_entry, count_words: 3)
            expect(diary.count_words).to eq 6
        end
    end
end
