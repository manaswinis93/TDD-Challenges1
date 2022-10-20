require "secret_diary"
require "diary"

RSpec.describe "Integartion" do
    
    context "Initially When the diary is locked" do
        it "raises error" do
            entry = Diary.new("contents")
            diary = SecretDiary.new(entry)
            expect{diary.read}.to raise_error "Go away!"
        end
    end
    context "When the diary is unlocked" do
        it "Returns the diary's contents" do
            entry = Diary.new("contents")
            diary = SecretDiary.new(entry)
            diary.unlock
            expect(diary.read).to eq "contents"
        end
    end
    context "When the diary is relocked" do
        it "raises error" do
            entry = Diary.new("contents")
            diary = SecretDiary.new(entry)
            diary.unlock
            diary.lock
            expect{diary.read}.to raise_error "Go away!"
        end
    end

end