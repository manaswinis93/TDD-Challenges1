require "diary"
require "diary_entry"
require "todo_list"
require "todo"

RSpec.describe "Intregration" do
    context "given multiple diary entries" do
        it "returns list of entries added" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("title", "Ahoy there!")
            entry_2 = DiaryEntry.new("title", "How are you?")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.list).to eq [entry_1, entry_2]  
        end
    end

    describe "pick_readable_entry behaviour" do
        entry_1 = DiaryEntry.new("title", "Ahoy!")
        entry_2 = DiaryEntry.new("title", "Ahoy there!")
        entry_3 = DiaryEntry.new("title", "How are you?")
        context " given entries exactly readable in available time" do
            it "returns best entry readable" do
                diary = Diary.new
                diary.add(entry_1)
                diary.add(entry_2)
                diary.add(entry_3)
                expect(diary.pick_readable_entry(3,1)).to eq  entry_3
            end
        end
        context " given entries doesnot fit exactly in available time" do
            it "returns closest entry readable" do
                diary = Diary.new
                diary.add(entry_1)
                diary.add(entry_2)
                expect(diary.pick_readable_entry(3,1)).to eq  entry_2
            end
        end
        context " given entries not readable in available time" do
            it "returns nil" do
                diary = Diary.new
                entry = DiaryEntry.new("title", "one two three four five?")
                diary.add(entry)
                expect(diary.pick_readable_entry(3,1)).to eq  nil
            end
        end
        context " given invalid wpm " do
            it "fails" do
                diary = Diary.new
                diary.add(entry_1)
                diary.add(entry_2)
                expect{diary.pick_readable_entry(-3,1)}.to raise_error  "Reading speed should be positive!"
            end
        end

    end
    describe "extraction of phone numbers from diary entries" do
        context "given entries with multiple phone numbers" do
            it "returns list of unique and valid phone numbers" do
                diary = Diary.new
                entry_1 = DiaryEntry.new("title", "Nagaraju is available at 07123456789")
               entry_2 = DiaryEntry.new("title", " My friends are 07123456789, 07123456788, 0780000")
                diary.add(entry_1)
               diary.add(entry_2)
                expect(diary.number_diary).to eq  ["07123456789", "07123456788"] 
            end
        end
    end  
    
    describe "TodoList and Todo behaviour" do
        context "given mutliple tasks it should" do
            it "adds and returns the task list" do
                task_list = TodoList.new
                task_1 = Todo.new("Drink water")
                task_2 = Todo.new("Take a break")
                task_list.add(task_1)
                task_list.add(task_2)
                expect(task_list.all).to eq  [task_1, task_2]
            end
        end
    end
end
