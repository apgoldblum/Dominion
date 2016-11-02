#Author: Aaron G
require './player'
require './cards/card'

class Game

  attr_accessor :players, :kingdom

  def initialize(player_count)
    @player_count = player_count
  end

  def setup()
    player_setup()
    kingdome_setup()
    deck_setup()
  end

  private

  def player_setup()
    @players = {1 => Player.new(), 2 => Player.new()}
  end

  def kingdom_setup()
    @kingdom = Kingdom.new(['base'])
  end

  def deck_setup()
    estate = Card.new(card_name = 'estate', cost = 2, type = ['vp'], vp = '1')
    copper = Card.new(card_name = 'copper', cost = 0, type = ['treasure'], coins = '1')
    default_deck = [estate, estate, estate, copper, copper, copper, copper, copper, copper, copper]
    players[1].deck = default_deck.shuffle
    players[2].deck = default_deck.shuffle
  end
end
