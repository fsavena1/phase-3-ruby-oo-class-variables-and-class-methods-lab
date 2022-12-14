require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre)
        @name=name
        @artist=artist 
        @genre=genre 
        @@genres << genre 
        @@artists << artist 
        @@count += 1
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        genre_num = {}
        @@genres.each do |g|
            if genre_num[g] 
                genre_num[g] += 1
            else
                genre_num[g] = 1 
            end
        end
        genre_num
    end

    def self.artist_count
        artist_num = {}
        @@artists.each do |g|
            if artist_num[g] 
                artist_num[g] += 1
            else
                artist_num[g] = 1 
            end
        end
        artist_num
    end


end

newsong = Song.new("test","test", "test")
new_song2 = Song.new("new", "new", "new")
newsong3 = Song.new("new", "new", "new")

binding.pry