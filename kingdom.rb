#Author: Aaron G
require './cards/base/library'

class Kingdom

  # attr_reader :kingdom

  #Sets should be an array
  def initialize(sets)
    @sets = sets
  end

  def render(pile_size)
    create_libraries
    create_kingdom(pile_size)
  end

  private

  attr_accessor :libraries

  def create_libraries
    libraries = []
    @sets.each { |set|
      case set
      when 'base'
        libraries += BaseLibrary.new.base_library
      end
    }
    @libraries = create_libraries
  end

  def create_kingdom(pile_size)
    kingdom_set = choose_kingdom
    kingdom = {}
    kingdom_set.each_with_index do |card, i|
      kingdom[i] = [card] * pile_size
    end
    kingdom
  end

  def choose_kingdom
    kingdom_set = []
    pick_indexes = []
    while kingdom_set.size < 10
      choice = rand(libraries.size)
      if !pick_indexes.include?(choice)
        pick_indexes.push(choice)
        kingdom_set.push(libraries[choice])
      end
    end
    kingdom_set.sort_by{ |card| card.cost }
  end
end
