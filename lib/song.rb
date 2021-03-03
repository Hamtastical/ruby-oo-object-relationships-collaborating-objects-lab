require "pry"

class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)

        @name = name
        @artist = artist
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        file = filename.split(" - ") #parse the filename from artist to song
        new_song = Song.new(file[1]) #make new instance of a song from the file
        new_song.artist_name = file[0] #calls the artist_name setter in .artist_name to assign it to the artist
        new_song #last lime calls it
        
        

    end

    def artist_name=(string) #takes in a string of the artist name
        self.artist = Artist.find_or_create_by_name(string) #self.artist (the Song and the artist attribute) = the Artist class method to find or create a artist if it exists or not.  Puts in the artist (string) as an argument
        #AS LONG AS YOU HAVE THE SETTER, YOU CAN USE ABOVE AS A ._____ FORMAT
    end

end