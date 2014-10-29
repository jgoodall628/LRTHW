class Incorrect
  def initialize(scorer, dealer)
    @scorer = scorer
    @dealer = dealer
  end
  
  def enter
    puts "Incorrect"
    @scorer.update_high_score
    @scorer.clear_streak
    @dealer.deal_card
    return 'deal'
  end
end