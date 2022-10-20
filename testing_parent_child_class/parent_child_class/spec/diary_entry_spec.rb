require "diary_entry"
RSpec.describe DiaryEntry do
    it "constructs" do
        entry = DiaryEntry.new("title", "contents")
        expect(entry.title).to eq "title"
        expect(entry.contents).to eq "contents"
    end
    it "returns the no of words in entry" do
        entry = DiaryEntry.new("title", "no of words is five")
        expect(entry.count_words).to eq 5
    end
end
