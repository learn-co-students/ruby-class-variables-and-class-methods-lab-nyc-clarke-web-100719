require "pry"
class Song
    attr_accessor :name, :artist, :genre
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    @@count = 0
    @@artists = []
    @@genres = []

    def self.count
        @@count
    end
    def self.artists
      @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

   def self.genre_count
    final_hash = {}
      @@genres.each do |ele|
        final_hash[ele] = @@genres.count(ele)
      end
      final_hash
   end

   def self.artist_count
    final_hash = {}
    @@artists.each do |ele|
      final_hash[ele] = @@artists.count(ele)
    end
    final_hash
   end




end
#binding.pry