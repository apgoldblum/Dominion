#Author: Aaron G
require './cards/card'
require './cards/default_library'
require './kingdom'

class Board

  attr_accessor :board

  def initialize(player_count)
    @board = setup()
    pile_sizes = starting_pile_size(player_count)
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
    library_setup()
    kingdom = kingdom_setup()
    # TODO: Create board object and populate hash
    @board = {kingdome: kingdom, supply_piles: {}, trash: {}}
  end

  private

  def supply_setup()
    default_library ||= DefaultLibrary.new()
    default_library.render()
  end

  def library_setup()

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
