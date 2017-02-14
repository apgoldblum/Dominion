#Author: Aaron G
require './cards/card'
require './cards/default_library'
require './kingdom'

class Board

  attr_accessor :board

  def initialize(player_count)
    @player_count = player_count
  end

  def setup
    supply_setup
    kingdom_setup
    # TODO: Create board object and populate hash
    @board = {kingdom: @kingdom, supply: @supply, trash: []}
  end

  private

  def supply_setup
    library = DefaultLibrary.render
    pile_sizes = starting_pile_size(@player_count)

    provinces = [library[:province]] * pile_sizes[:cards]
    dutchies = [library[:dutchy]] * pile_sizes[:cards]
    estates = [library[:estate]] * pile_sizes[:cards]
    curses = [library[:curse]] * pile_sizes[:curse]

    golds = [library[:gold]] * 30
    silvers = [library[:silver]] * 40
    coppers = [library[:copper]] * pile_sizes[:copper]

    @supply = {provinces: provinces, dutchies: dutchies, estates: estates,
              curses: curses, golds: golds, silvers: silvers, coppers: coppers}
  end

  def kingdom_setup
    pile_size = starting_pile_size(@player_count)[:cards]
    @kingdom = Kingdom.new(['base']).render(pile_size)
  end

  def starting_pile_size(player_count)
    copper_count = 60 - (player_count * 3)
    case player_count
    when 2
      {cards: 8, curse: 10, copper: copper_count}
    when 3
      {cards: 12, curse: 20, copper: copper_count}
    when 4
      {cards: 12, curse: 30, copper: copper_count}
    else
      raise 'Invalid Player Count'
    end
  end
end
