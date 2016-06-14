require 'gosu'
class Hero


	def initialize
	    @sprites = Gosu::Image::load_tiles('assets/images/cat.png', 847/6, 87, tileable: false)
	    @width = @sprites.first.width
	    @height = @sprites.first.height
	    @y = 250
	    @x = 10
	end
	
	def draw
	    sprite = @sprites[Gosu::milliseconds / 75% @sprites.size]
	    sprite.draw(@x, @y, 1)
	end

	def update
	    @y -= 1 if button_down?(Gosu::KbUp)
	    @y += 1 if button_down?(Gosu::KbDown)
	    sprite.draw(@x, @y, 1)
	end
end