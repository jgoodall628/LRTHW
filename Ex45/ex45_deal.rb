class Deal
  def initialize(scorer, dealer)
    @scorer= scorer
    @dealer = dealer
  end
     
  def enter
    puts "Streak = #{@scorer.streak}"
    puts "The card: #{@dealer.card}"
    puts "Higher (h) or lower (l) or exit(exit)? "
    print "> "
    action
  end
  
  def action
    @choice = gets.chomp
    result
  end
  
  def result
    if @choice == 'h' && @dealer.next_key > @dealer.key
     return 'correct'
    elsif @choice == 'l' && @dealer.next_key < @dealer.key
      return 'correct'
    elsif @choice == 'exit'
      return 'end_game'
    else
      return 'incorrect'
    end
  end
end
