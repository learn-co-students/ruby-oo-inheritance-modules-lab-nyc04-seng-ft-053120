require "pry"
module Memorable
    module InstanceMethods
        def artist=(artist)
            @artist = artist
        end
    
        def to_param
            name.downcase.gsub(' ', '-')
        end
        def save
            self.class.all << self
        end
    end
    module ClassMethods
        @@all = []
        def find_by_name(name)
            @@all.detect{|a| a.name == name}
        end
    
        def all
        @@all
        end
    
        def reset_all
        self.all.clear
        end
    
        def count
        self.all.count
        end
       
    end
end

