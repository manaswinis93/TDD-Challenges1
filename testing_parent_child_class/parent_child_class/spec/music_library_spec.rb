require "music_library"
RSpec.describe MusicLibrary do
    context "given tracks to add" do
        it "returns the list of tracks" do
            list = MusicLibrary.new
            track_1 = double :track
            track_2 = double :track
            list.add(track_1)
            list.add(track_2)
            expect(list.all).to eq [track_1, track_2]
        end
    end
    context "given list of tracks and keyword to search" do
        it "fails if keyword is empty" do
            list = MusicLibrary.new
            track_1 = double :track, matches?: true 
            list.add(track_1)
            expect{list.search("")}.to raise_error "Keyword is empty!"
        end

        it "returns list of tracks that matches with keyword" do
            list = MusicLibrary.new
 #           track_1 = double :track, matches?: true
 #           track_2 = double :track, matches?: false
 #           track_3 = double :track, matches?: true
            track_1 = double :track
            expect(track_1).to receive(:matches?).with("arg").and_return(true)
            list.add(track_1)
            track_2 = double :track
            expect(track_2).to receive(:matches?).with("arg").and_return(false)
            list.add(track_2)
            track_3 = double :track
            expect(track_3).to receive(:matches?).with("arg").and_return(true)
            list.add(track_3)
            expect(list.search("arg")).to eq [track_1, track_3]
        end
        it "returns nothing if no track matches with keyword" do
            list = MusicLibrary.new
#            track_1 = double :track, matches?: false
#            track_2 = double :track, matches?: false
#            track_3 = double :track, matches?: false
            track_1 = double :track
            expect(track_1).to receive(:matches?).with("arg").and_return(false)
            list.add(track_1)
            track_2 = double :track
            expect(track_2).to receive(:matches?).with("arg").and_return(false)
            list.add(track_2)
            track_3 = double :track
            expect(track_3).to receive(:matches?).with("arg").and_return(false)
            list.add(track_3)
            expect(list.search("arg")).to eq []
        end
    end
end