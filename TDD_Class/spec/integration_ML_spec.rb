require "music_library"
require "track"

RSpec.describe "integration" do
    context "when we add track to the library" do
        it "comes back in the list " do
            music_library = MusicLibrary.new
            track_1 = Track.new("levitating", "Dua Lipa")
            music_library.add(track_1)
            expect(music_library.all).to eq [track_1]
        end
    end
    context "when we add multiple tracks to the library" do
        it "comes back in the list " do
            music_library = MusicLibrary.new
            track_1 = Track.new("levitating", "Dua Lipa")
            track_2 = Track.new("watermelon sugar", "Harry styles")
            music_library.add(track_1)
            music_library.add(track_2)
            expect(music_library.all).to eq [track_1, track_2]
        end
    end
    context "when some tracks added to the library" do
        it "searches for those tracks and returns the list " do
            music_library = MusicLibrary.new
            track_1 = Track.new("levitating", "Dua Lipa")
            track_2 = Track.new("watermelon sugar", "Harry styles")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("watermelon sugar")
            expect(music_library.all).to eq [track_2]
        end
        it "searches for those tracks by partial title " do
            music_library = MusicLibrary.new
            track_1 = Track.new("levitating", "Dua Lipa")
            track_2 = Track.new("watermelon sugar", "Harry styles")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("sugar")
            expect(music_library.all).to eq [track_2]
        end
    end
    context "when no tracks are matching" do
        it "searches for those tracks returns empty list " do
            music_library = MusicLibrary.new
            track_1 = Track.new("levitating", "Dua Lipa")
            track_2 = Track.new("watermelon sugar", "Harry styles")
            music_library.add(track_1)
            music_library.add(track_2)
            result = music_library.search_by_title("amy")
            expect(music_library.all).to eq []
        end
    end    
end