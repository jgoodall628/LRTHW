class Ending
  def initialize(scorer)
    @scorer = scorer
  end
  
  def enter
    puts "Your high score: #{@scorer.high_score}"
    exit(0)
  end
end