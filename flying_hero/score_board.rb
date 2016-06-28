require 'gosu'
class ScoreBoard

   def initialize(window)
	@score.draw(0, 0, 1)
   end

   def draw
  	@score = Gosu::Image.from_text(window, scoreboard, Gosu.default_font_name, 40)
   end

   def scoreboard
	"0"
   end

   
end
