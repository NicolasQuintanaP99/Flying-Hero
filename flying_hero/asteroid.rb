require 'gosu'
require_relative 'flying_item'
class Asteroid < FlyingItem
   def initialize(window)
   	 super
     @height = @image.height * self.class.scale_y
     @width = @image.width * self.class.scale_x
  	 @y = Random.rand(window.height - @height)
	   @x = window.width - 100
	 end

   def points
     self.class.type
   end
   
   def self.scale_x
     1
   end

   def self.scale_y
     1
   end

   def self.image_path
	    'assets/images/asteroid.png'
   end

   def draw
	    @image.draw(@x, @y, 1, self.class.scale_x, self.class.scale_y)
   end
end
