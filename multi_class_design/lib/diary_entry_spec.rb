require "diary_entry"
RSpec.describe DiaryEntry do
    context "when given a entry with no contents" do
        it " word_count returns 0" do
          entry = DiaryEntry.new("title", "")
          expect(entry.word_count).to eq 0
        end
    end

    context "given invalid reading speed" do
        it "fails" do
            entry = DiaryEntry.new("title", "Ahoy there!")
          expect{entry.reading_time(-5)}.to raise_error "Reading speed should be above zero"
        end
    end


end
