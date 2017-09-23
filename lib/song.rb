require 'pry'

class Song
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  extend Memorable::ClassMethods
  extend Findable::ClassMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
