require 'pry'

class Artist
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    # Need it to be self.class.all rather
    # than self.all because self refers to the instance
    # and we need to access the class to method ALL
    #
    # self.class.all << self
    #
    # the above line has been abstracted into the
    # Memorable Instance Methods Module
    #
    # Need to add the super keyword to execute the
    # initialize code from the module first
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
