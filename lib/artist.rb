require "pry"

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs

        Song.all.select {|song| song.artist == self } 

    end


    def add_song(song)
        song.artist = self
        
        # binding.pry
    end

    def self.find_or_create_by_name(name)
        # binding.pry
        found_artist = @@all.find {|a| name == a.name} #in the @all array, find the name of the artist and == to the artist.name
        if found_artist #goes through the variab;e
            return found_artist # returns it

        else 
              return Artist.new(name)  #else create a new one by returning the Artist(class).new and (name) into it to create the name in the argument      
        end
    end

    def print_songs
        # binding.pry
       songs.each {|song| puts song.name } #goes through the previous song method created and iterates through it, then putting the song name
        
    end
end