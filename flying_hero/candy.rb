require 'gosu'
require_relative 'flying_item'
class Candy < FlyingItem 
SCROLL_SPEED = 10
  def self.image_path
	'assets/images/candy.png'
  end
  def move!
	@x -= SCROLL_SPEED
  end  
end
