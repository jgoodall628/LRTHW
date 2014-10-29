
require './ex45_scorer'
require './ex45_dealer'
require './ex45_deal'
require './ex45_ending'
require './ex45_correct'
require './ex45_incorrect'

class Engine 
  def initialize(scene_map)
    @scene_map = scene_map
  end
  
  def play
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('ending')
    
    while current_scene!= last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end
  end
end

class Map
  
  def initialize(start_scene)
      @start_scene = start_scene
      @scorer = Scorer.new
      @dealer = Dealer.new
      @@scenes = {
        'deal' => Deal.new(@scorer, @dealer),
        'end_game' => Ending.new(@scorer),
        'incorrect' => Incorrect.new(@scorer, @dealer),
        'correct' => Correct.new(@scorer, @dealer)
      }
  end
    
  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end


map = Map.new('deal')
deck = Engine.new(map)
deck.play