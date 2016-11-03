#Author: Aaron G
require './player'
require './cards/card'
require './cards/default_library'
require './kingdom'
require './board'

class Game

  attr_accessor :players

  def initialize(player_count)
    @player_count = player_count
  end

  def setup()
    player_setup()
    board_setup()
    deck_setup()
  end

  private

  def player_setup()
    @players = {1 => Player.new(), 2 => Player.new()}
  end

  def board_setup()
    @board ||= Board.new(@player_count)
    @board.setup()
  end

  def deck_setup()
    default_library = DefaultLibrary.new().render()
    estate = default_library[:estate]
    copper = default_library[:copper]
    default_deck = [estate, estate, estate, copper, copper, copper, copper, copper, copper, copper]
    players[1].deck = default_deck.shuffle
    players[2].deck = default_deck.shuffle
  end
end
