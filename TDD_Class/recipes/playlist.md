1. Describe the Problem

> As a user
> So that I can keep track of my music listening
> I want to add tracks I've listened to and see a list of them.


2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE
```ruby
class Playlist
  def initialize 
    #initializing track list here
    @track_lits = []
  end

  def add_music(track) # track is a string 
    # returns list of tracks listened to 
  end
end
```
3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
when track is empty it should fail 
track  = Playlist.new 
track.add_music("") => fails "Track is empty!"

# 2
given a track it should add and return the list 
track  = Playlist.new 
track.add_music("Levitating") =>["Levitating"]

# 3
given multiple tracks it should add and return the list of tracks
track  = Playlist.new 
track.add_music("Levitating")
track.add_music("Watermelon Sugar") =>["Levitating", "Watermelon Saugar"]

# 4
given a duplicate track it should add and return the list of unique tracks
track  = Playlist.new 
track.add_music("Levitating")
track.add_music("Watermelon Sugar") 
track.add_music("Watermelon Sugar") =>["Levitating", "Watermelon Saugar"]

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.