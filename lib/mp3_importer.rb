=begin 
The MP3Importer class will parse all the filenames in the spec/fixtures folder and send the filenames to the Song class
=end

require "pry"

class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        file_name = Dir["./spec/fixtures/mp3s/*"] #make a variable, use DIR(Directory) to find all the .mp3 files 

        file_name.each {|file| file.slice!("./spec/fixtures/mp3s/")} #iterated through them and sliced out the portion in parentheses that messes up the name
        file_name


    end

    def import
        files.each {|file| Song.new_by_filename(files)} #iterate through the files above and it will create a new filename through the Song class method
        
    end
end

