class Song
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @@genre_count ||= {}
        @@artist_count ||= {}
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@genre_count[genre] ||= 0
        @@genre_count[genre] += 1
        @@artist_count[artist] ||= 0
        @@artist_count[artist] += 1
    end
    attr_accessor :name, :artist, :genre
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
        @@genre_count
    end
    def self.artist_count
        @@artist_count
    end
end