#Author: Aaron G
require './cards/card'
require './cards/default_library'
require './kingdom'

class Board

  attr_accessor :board

  def initialize(player_count)
    @player_count = player_count
    @province_pile = pile_sizes[:vp]
    @dutchy_pile  = pile_sizes[:vp]
    @estate_pile = pile_sizes[:vp]
    @gold_pile = 30
    @silver_pile = 40
    @copper_pile = pile_sizes[:copper]
    @curse_pile = pile_sizes[:curse]
  end

  def setup()
    supply = supply_setup()
    kingdom = kingdom_setup()
    # TODO: Create board object and populate hash
    @board = {kingdome: kingdom, supply_piles: {}, trash: {}}
  end

  private

  def supply_setup()
    library ||= DefaultLibrary.new().render()
    pile_sizes = starting_pile_size(player_count)

    provinces = [library[:province]] * pile_sizes[:vp]
    dutchies = [library[:dutchy]] * pile_sizes[:vp]
    estates = [library[:estate]] * pile_sizes[:vp]
    curses = [library[:curse]] * pile_sizes[:curse]

    golds = [library[:gold]] * 30
    silvers = [library[:silver]] * 40
    coppers = [library[:gold]] * pile_sizes[:copper]

    supply = {provinces: province, dutchies: dutchy, estates: estate,
              curses: curse, golds: golds, silvers: silvers, coppers: coppers}
  end

  def kingdom_setup()
    kingdom ||= Kingdom.new(['base'])
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
