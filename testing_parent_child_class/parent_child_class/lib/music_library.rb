class MusicLibrary
    def initialize
      @play_list = []
    end
  
    def add(track) 
        @play_list << track
    end
  
    def all
      return @play_list
    end
    
    def search(keyword) 
        fail "Keyword is empty!" if keyword.empty?
        return @play_list.filter {|track| track.matches?(keyword) == true }
    end
  end