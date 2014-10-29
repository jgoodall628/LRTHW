class Scorer
  
  attr_reader :streak
  attr_reader :high_score
  
  def initialize
    @streak = 0
    @high_score = 0
  end
  
  def add_streak
    @streak +=1
  end
  def update_high_score
    if @streak > @high_score
      @high_score = @streak
    end
  end
  def clear_streak
    @streak = 0
  end
end
