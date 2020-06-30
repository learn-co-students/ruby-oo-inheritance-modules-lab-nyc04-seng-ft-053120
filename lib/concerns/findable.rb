require 'pry'
module Findable
    @@all = []
    def self.find_by_name(name)
        binding.pry
        @@all.detect{|a| a.name == name}
        binding.pry
    end
end