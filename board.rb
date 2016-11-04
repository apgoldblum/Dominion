#Author: Aaron G
require './cards/card'
require './cards/default_library'
require './kingdom'

class Board

  attr_accessor :board

  def initialize(player_count)
    @player_count = player_count
  end

  def setup()
    supply_setup()
    kingdom_setup()
    # TODO: Create board object and populate hash
    @board = {kingdom: @kingdom, supply: @supply, trash: {}}
  end

  private

  def supply_setup()
    library ||= DefaultLibrary.new().render()
    pile_sizes = starting_pile_size(@player_count)

    provinces = [library[:province]] * pile_sizes[:vp]
    dutchies = [library[:dutchy]] * pile_sizes[:vp]
    estates = [library[:estate]] * pile_sizes[:vp]
    curses = [library[:curse]] * pile_sizes[:curse]

    golds = [library[:gold]] * 30
    silvers = [library[:silver]] * 40
    coppers = [library[:gold]] * pile_sizes[:copper]

    @supply = {provinces: provinces, dutchies: dutchies, estates: estates,
              curses: curses, golds: golds, silvers: silvers, coppers: coppers}
  end

  def kingdom_setup()
    @kingdom = Kingdom.new(['base']).render()
  end

  def starting_pile_size(player_count)
    copper_count = 60 - (player_count * 3)
    pile_sizes = {vp: 12, curse: 10, copper: copper_count}
    case player_count
    when 3
      pile_sizes[:curse] = 20
    when 4
      pile_sizes[:curse] = 30
    else
      pile_sizes[:vp] = 8
    end
    pile_sizes
  end
end
