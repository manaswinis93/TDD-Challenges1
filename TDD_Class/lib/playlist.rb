class Playlist
    def initialize  
        @track_list = []
    end
    def add_music(track)
        fail "Track is empty!" if track.empty?
        @track_list << track 
        return @track_list.uniq
    end
end