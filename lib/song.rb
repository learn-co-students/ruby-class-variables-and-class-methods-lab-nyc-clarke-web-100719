class Song
    @@genre_count = {}
    @@artist_count = {}
    @@genres = []
    @@artists = []
    @@count = 0

    attr_accessor :name, :artists, :genre, :genre_count

    def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    if !@@artist_count[artist]
        @@artist_count[artist] = 1
    else
        @@artist_count[artist] += 1
    end
    @@genres << @genre
    if !@@genre_count[genre]
        @@genre_count[genre] = 1
    else
        @@genre_count[genre] += 1
    end
    @@count += 1
    end

    def name
    @name
    end

    def artist
    @artist
    end

    def genre
    @genre
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
    @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

end