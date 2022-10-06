require "playlist"
RSpec.describe Playlist do
    context "given a track is empty" do
         it "fails" do
        track  = Playlist.new 
        expect{track.add_music("")}.to raise_error "Track is empty!"
         end
    end
    context "given a track it should add" do
        it "return the list" do
       track  = Playlist.new 
       result = track.add_music("Levitating") 
       expect(result).to eq ["Levitating"]
        end
   end
   context "given multiple tracks it should add" do
     it "return the list of the tasks" do
     track  = Playlist.new 
     track.add_music("Levitating") 
     result = track.add_music("Watermelon Sugar")
     expect(result).to eq ["Levitating", "Watermelon Sugar"]
     end
    end

    context"given a duplicate track it should" do 
      it "return the list of unique tracks" do
        track  = Playlist.new 
        track.add_music("Levitating")
        track.add_music("Watermelon Sugar") 
        result = track.add_music("Watermelon Sugar")
        expect(result).to eq ["Levitating", "Watermelon Sugar"]
      end
    end
end

