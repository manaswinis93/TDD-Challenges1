require "music_library"
require "track"
RSpec.describe MusicLibrary do
    context "initailly" do
        it "is empty" do
         music_library = MusicLibrary.new
         expect(music_library.all).to eq []
        end

        it "responds to searches with an empty list" do
            music_library = MusicLibrary.new
            expect(music_library.all).to eq []
        end
    end

end