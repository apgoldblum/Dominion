#Author: Aaron G
require './player'
require './cards/card'
require './cards/default_library'
require './kingdom'

class Game

  attr_accessor :players, :kingdom

  def initialize(player_count)
    @player_count = player_count
  end

  def setup()
    player_setup()
    library_setup()
    kingdom_setup()
    deck_setup()
  end

  private

  def player_setup()
    @players = {1 => Player.new(), 2 => Player.new()}
  end

  def library_setup()
    @default_library ||= DefaultLibrary.new().library
  end

  def kingdom_setup()
    @kingdom ||= Kingdom.new(['base'])
  end

  def deck_setup()
    estate = @default_library[:estate]
    copper = @default_library[:copper]
    default_deck = [estate, estate, estate, copper, copper, copper, copper, copper, copper, copper]
    players[1].deck = default_deck.shuffle
    players[2].deck = default_deck.shuffle
  end
end
