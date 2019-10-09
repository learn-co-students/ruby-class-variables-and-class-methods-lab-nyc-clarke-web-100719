class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist # if !@@artists.find{|i_artist| i_artist == artist}
        @@genres << genre
    end
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
        temp_hash_gen ={}
        @@genres.each{|ind_gen|
            if !temp_hash_gen[ind_gen]
                temp_hash_gen[ind_gen] = 1
            else
                temp_hash_gen[ind_gen] += 1
            end
        }
        temp_hash_gen
    end

    def self.artist_count
        temp_hash_art ={}
        @@artists.each{|ind_art|
            if !temp_hash_art[ind_art]
                temp_hash_art[ind_art] = 1
            else
                temp_hash_art[ind_art] += 1
            end
        }
        temp_hash_art 
    end
end