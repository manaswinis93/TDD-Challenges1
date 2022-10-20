class Track
    def initialize(title, artist) 
        @title = title
        @artist = artist
    end
  
    def matches?(keyword) 
        fail "Keyword is empty!" if keyword.empty?
        if @title.include?(keyword) || @artist.include?(keyword)
            return true
        else
            return false
        end
    end
  end