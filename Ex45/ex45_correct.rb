class Correct
  def initialize(scorer, dealer)
    @scorer = scorer
    @dealer = dealer
  end
  
  def enter
    puts "Correct"
    @scorer.add_streak
    @scorer.update_high_score
    @dealer.deal_card
    return 'deal'
  end
end