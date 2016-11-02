#Author: Aaron G

class Player

  attr_accessor :victory_points, :coin_tokens, :extra_vp

  def initialize()
    @victory_points ||= 0
    @coin_tokens ||= 0
    @extra_vp ||= 0
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
end

