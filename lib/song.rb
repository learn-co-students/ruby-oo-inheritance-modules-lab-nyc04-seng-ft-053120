require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist
  
  
@@all = []
  def initialize
    save
  end

end
