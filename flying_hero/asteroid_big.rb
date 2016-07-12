require 'gosu'
require_relative 'asteroid'
class AsteroidBig < Asteroid

   def initialize(window)
	    super
	 end

   def self.type
     2
   end

   def self.scale_x
     2
   end

   def self.scale_y
     2
   end

   def move!
        @x -= 10
   end

end
