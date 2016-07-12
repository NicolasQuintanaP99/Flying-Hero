require 'gosu'
require_relative 'asteroid'
class AsteroidSmall < Asteroid
  def self.type
    1
  end

   def move!
	@x -= 15
   end
end
