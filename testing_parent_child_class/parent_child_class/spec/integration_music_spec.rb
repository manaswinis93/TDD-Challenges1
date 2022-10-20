require "music_library"
require "track"
RSpec.describe "Intregration" do
    context " given tracks to add" do
        it "returns list of tracks" do
            list = MusicLibrary.new
            list.add(Track.new("Levitating", "Dua lipa"))
            list.add(Track.new("As it was", "Harry styles"))
        end
    end
    context " given a list of tracks and keyword to search" do
           track_1 = Track.new("Levitating", "Dua lipa")
           track_2 = Track.new("As it was", "Harry styles")
           track_3 = Track.new("Watermelon sugar", "Harry styles")
        it "returns list of tracks that matches" do
            list = MusicLibrary.new
            list.add(track_1)
            list.add(track_2)
            list.add(track_3)
            expect(list.search("it")).to eq [track_1, track_2] 
        end
        it "returns nothing if no track matches" do
            list = MusicLibrary.new
            list.add(track_3)
            expect(list.search("it")).to eq [] 
        end
    end

end