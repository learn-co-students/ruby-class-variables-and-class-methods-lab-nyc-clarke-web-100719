require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  @@all = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def new(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre

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
    hash = {}

    @@genres.each do |gen|
      if hash[gen].nil?
        hash[gen] = 1
      else
        hash[gen] += 1
      end
    end

    return hash
  end

  def self.artist_count
    hash = {}

    @@artists.each do |art|
      if hash[art].nil?
        hash[art] = 1
      else
        hash[art] += 1
      end
    end

    return hash
  end


end