class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

    def initialize(name, artist, genre)
        @name = name
        @@count += 1
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.genres
        @genres_unique = @@genres.uniq
        @genres_unique
    end

    def self.artists
        @artists_unique = @@artists.uniq
        @artists_unique
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each { |genre|
            if genre_hash[genre]
               genre_hash[genre] += 1
            else
                genre_hash[genre] = 1
            end 
        }
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each { |artist|
            if artist_hash[artist]
               artist_hash[artist] += 1
            else
                artist_hash[artist] = 1
            end 
        }
        artist_hash
    end
end