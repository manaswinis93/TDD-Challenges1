require "diary"
require "diary_entry"
RSpec.describe "integration" do
  context "after adding some entries" do
    it "lists out the entries added" do
        diary = Diary.new 
        diary_entry = DiaryEntry.new("my title", "my contents")
        diary.add(diary_entry)
        expect(diary.all).to eq [diary_entry]
    end
  end
  context "after adding some entries" do
    it "lists out the entries added" do
        diary = Diary.new 
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary_entry_2 = DiaryEntry.new("my title_2", "my contents_2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end
   end
    describe "word counting behaviour" do
      it "counts the words in all diary entries contenst " do
        diary = Diary.new 
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary_entry_2 = DiaryEntry.new("my title_2", "my contents_2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.count_words).to eq 4
    end
   end

   describe "reading time behaviour" do
    it "fails where wpm is 0" do
        diary = Diary.new
        diary_entry = DiaryEntry.new("my title", "my contents 1")
        expect{ diary.reading_time(0) }.to raise_error("Reading time should be above zero")
    end
    it "calculates the reading time for all entries where it fits exactly" do
      diary = Diary.new 
      diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
      diary_entry_2 = DiaryEntry.new("my title_2", "my contents 2")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 3
       end
    end
    describe "reading time behaviour" do
        it "calculates the reading time for all entries where it falls over a min" do
          diary = Diary.new 
          diary_entry_1 = DiaryEntry.new("my title", "my contents")
          diary_entry_2 = DiaryEntry.new("my title_2", "my contents 2")
          diary.add(diary_entry_1)
          diary.add(diary_entry_2)
          expect(diary.reading_time(2)).to eq 3
           end
    end  
    describe "best reading time entry behaviour" do
        it "fails where wpm is 0" do
            diary = Diary.new
            diary_entry = DiaryEntry.new("my title", "my contents 1")
            diary.add(diary_entry)
            expect{ diary.find_best_entry_for_reading_time(0, 1) }.to raise_error("Reading time should be above zero")
        end
        context "where we just have one entry and it is readable in time" do
        it "returns that entry" do
          diary = Diary.new 
          diary_entry_1 = DiaryEntry.new("my title", "my contents")
          diary.add(diary_entry_1)
          result = diary.find_best_entry_for_reading_time(2, 1)
          expect(result).to eq diary_entry_1
        end
       end

       context "where we just have one entry and it is unreadable in time" do
        it "returns nil" do
          diary = Diary.new 
          diary_entry_1 = DiaryEntry.new("my title", "my contents are unreadable")
          diary.add(diary_entry_1)
          result = diary.find_best_entry_for_reading_time(2, 1)
          expect(result).to eq nil
        end
       end
       context "where we just multiple entries" do
        it "returns longest entry the user could read in this time" do
          diary = Diary.new 
          diary_entry = DiaryEntry.new("my title", "my contents")
          diary.add(DiaryEntry.new("my title", "my"))
          diary.add(diary_entry)
          diary.add(DiaryEntry.new("my title", "my contents are "))
          diary.add(DiaryEntry.new("my title", "my contents are unreadable"))
          diary.add(diary_entry)
          result = diary.find_best_entry_for_reading_time(2, 1)
          expect(result).to eq diary_entry
        end
       end
    end  
end