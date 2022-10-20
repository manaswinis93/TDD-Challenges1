require "track"
RSpec.describe Track do
    context "given a track" do
        it "fails if keyword is empty" do
            track = Track.new("Levitating", "Dua lipa")
            expect{track.matches?("")}.to raise_error "Keyword is empty!"
        end
        it "returns true if matches" do
            track = Track.new("Levitating", "Dua lipa")
            expect(track.matches?("tati")).to eq true
        end
        it "returns false if not matches" do
            track = Track.new("Levitating", "Dua lipa")
            expect(track.matches?("bua")).to eq false
        end
    end
end