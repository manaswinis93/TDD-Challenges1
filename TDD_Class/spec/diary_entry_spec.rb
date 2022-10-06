require "diary_entry"
RSpec.describe DiaryEntry do
    context "it returns the tilte and contents of the string" do
        it "returns the title of the string" do
         entry1 = DiaryEntry.new("todo-list", "Laundry")
         expect(entry1.title).to eq "todo-list"
         expect(entry1.contents).to eq "Laundry" 
       end 
       it "returns the contents of the string" do
        entry2 = DiaryEntry.new("shopping-list", "groceries")
        expect(entry2.title).to eq "shopping-list"
        expect(entry2.contents).to eq "groceries" 
       end
    end
    context "it counts and returns the number of words in the contents" do
        it "returns 1" do
            entry2 = DiaryEntry.new("shopping-list", "groceries")
            expect(entry2.count_words).to eq 1
           end
        it "retruns 8" do
          entry3 = DiaryEntry.new("Journal", "I am learning test driving a class program")
          expect(entry3.count_words).to eq 8
        end
        it "retruns 0 when the contents are empty" do
            entry4 = DiaryEntry.new("Journal", "")
            expect(entry4.count_words).to eq 0
          end

    end    
    context "it estimates and returns reading time in minutes" do
        it "returns 3" do
            entry2 = DiaryEntry.new("shopping-list", ("groceries " * 500))
            expect(entry2.reading_time(200)).to eq 3
           end
        it "retruns 5" do
          entry3 = DiaryEntry.new("Journal", ("I am learning test driving a class program" * 200 ))
          expect(entry3.reading_time(300)).to eq 5
        end
        it "fails" do
        entry1 = DiaryEntry.new("todo-list", "Laundry")
        expect{entry1.reading_time(0)}.to raise_error "Reading time should be above zero"
        end
    end  
    
    context "with a contents readable within the time" do
        it "returns the full contents" do
            entry = DiaryEntry.new("my_title", "contents are readable")
            chunk = entry.reading_chunk(200,1)
            expect(chunk).to eq "contents are readable"
        end
    end
    context "with contents unreadable within the time " do
        it "fails" do
            entry1 = DiaryEntry.new("todo-list", "Laundry")
            expect{entry1.reading_time(0)}.to raise_error "Reading time should be above zero"
            end
        it "returns a readable chunk" do
            entry = DiaryEntry.new("my_title", "contents are not readable")
            chunk = entry.reading_chunk(2,1)
            expect(chunk).to eq "contents are"
        end

        it "returns the next chunk, next time we are asked" do
            entry = DiaryEntry.new("my_title", "contents are not readable")
            entry.reading_chunk(2,1)
            chunk = entry.reading_chunk(2,1)
            expect(chunk).to eq "not readable"
        end
        it "restarts after reading the whole contents" do
            entry = DiaryEntry.new("my_title", "contents are not readable")
            entry.reading_chunk(2,1)
            entry.reading_chunk(2,1)
            chunk = entry.reading_chunk(2,1)
            expect(chunk).to eq "contents are"
        end
    end
            
end