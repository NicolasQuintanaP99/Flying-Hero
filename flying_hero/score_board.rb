require 'gosu'
class ScoreBoard
attr_accessor :scoreboard

   def initialize
      @scoreboard=0
   end

   def draw
     @score = Gosu::Image.from_text(self, @scoreboard, Gosu.default_font_name, 40)
     @score.draw(0, 0, 1)
   end

   def incress_score
     @scoreboard += 1
   end
   def reduce_score
     @scoreboard -= 1
   end
end
