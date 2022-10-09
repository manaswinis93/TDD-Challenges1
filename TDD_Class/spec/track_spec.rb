require "track"

RSpec.describe Track do
    it "constructs" do
        track = Track.new("levitating", "Dua Lipa")
        expect(track.title).to eq "levitating"
        expect(track.artist).to eq "Dua Lipa"
    end
    context "format" do
        it "formats the title and artist into single string" do
            track = Track.new("levitating", "Dua Lipa")
            expect(track.format).to eq "levitating by Dua Lipa"
        end
    end
end
