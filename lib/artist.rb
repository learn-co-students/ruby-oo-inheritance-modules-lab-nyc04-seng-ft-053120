require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
    @songs
  end
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
 
end
