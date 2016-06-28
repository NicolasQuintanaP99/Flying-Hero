require 'gosu'
require_relative 'asteroid'
class AsteroidSmall < Asteroid
   def move!
	@x -= 15
   end
end
