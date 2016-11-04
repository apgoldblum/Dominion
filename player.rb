#Author: Aaron G

class Player

  attr_accessor :actions, :buys, :coin_tokens, :coins, :deck, :discard, :extra_vp, :hand, :in_play, :victory_points

  def initialize()
    @actions = 0
    @buys = 0
    @coin_tokens = 0
    @coins = 0
    @deck = []
    @discard = []
    @extra_vp = 0
    @hand = []
    @in_play = []
    @victory_points = 0
  end

  def add_victory_points(points)
    victory_points += points
  end

  def add_coin_tokens(tokens)
    coin_tokens += tokens
  end

  def add_extra_vp(evp)
    extra_vp += evp
  end

  def draw(cards)
    for i in 1..cards
      @hand.push(@deck.pop)
    end
  end
end

