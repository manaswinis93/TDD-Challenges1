require "diary"
RSpec.describe Diary do
    context "given no entries" do
        it "returns empty list" do
            diary = Diary.new
            expect(diary.list).to eq []
        end
        it "returns nil" do
            diary = Diary.new
            expect(diary.pick_readable_entry(2,2)).to eq nil
        end
        it "returns empty list" do
            diary = Diary.new
            expect(diary.number_diary).to eq []
        end
    end


end