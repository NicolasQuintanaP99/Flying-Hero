require 'gosu'
class Hero
attr_accessor :x, :y


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

	def move_up!
	    @y -= 4 if (@y >= 0)
	end

	def move_down!(height)
	    @y += 4 if (@y <= height - @height)
	end

  def bumped_into?(object)
    hero_left = @x #puede ser variable local ya que solo la utiliza el metodo
    hero_right = @x + @width
    hero_top = @y
    hero_bottom = @y + @height
    object_left = object.x
    object_right = object.x + object.width
    object_top = object.y
    object_bottom = object.y + object.height
    if (object_bottom < hero_top)
      false
    elsif (hero_bottom < object_top)
      false
    elsif (object_right < hero_left)
      false
    elsif (object_left > hero_right)
      false
    else
      true
    end
  end
end
