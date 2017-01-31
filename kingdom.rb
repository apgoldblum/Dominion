#Author: Aaron G
require './cards/base/library'

class Kingdom

  # attr_reader :kingdom

  #Sets should be an array
  def initialize(sets)
    @sets = sets
  end

  def render
    create_libraries
    choose_kingdom
  end

  private

  def create_libraries
    @libraries = []
    @sets.each { |set|
      case set
      when 'base'
        @libraries += BaseLibrary.new.base_library
      end
    }
  end

  def choose_kingdom
    kingdom_set = []
    pick_indexes = []
    while kingdom_set.size < 10
      choice = rand(@libraries.size)
      if !pick_indexes.include?(choice)
        pick_indexes.push(choice)
        kingdom_set.push(@libraries[choice])
      end
    end
    kingdom_set
  end
end
