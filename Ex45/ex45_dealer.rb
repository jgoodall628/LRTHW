class Dealer
  
  attr_reader :card
  attr_reader :key
  
  def initialize
    @@cards = {12 => 'A', 11 => 'K', 10 => 'Q', 9 =>'J', 8 => 10, 7 => 9,
     6 => 8, 5 => 8, 4 => 6, 3 => 5, 2 => 4, 1 =>3, 0 => 2}
     @key = rand(0..12)
     @card = @@cards[@key]
  end
  
  def next_key
    @next_key = rand(0..12)
    return @next_key
  end
  
  def next_card
    @next_card = @@cards[@next_key]
    return @next_card
  end
  
  def deal_card
    @key = @next_key
    @card = next_card
  end
end
