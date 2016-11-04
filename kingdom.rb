#Author: Aaron G
require './cards/base/library'

class Kingdom

  attr_reader :sets

  #Sets should be an array
  def initialize(sets)
    @sets = sets
  end

  def render()
    create_libraries()
    choose_kingdom()
  end

  private

  def create_libraries()
    @libraries = []
    sets.each { |set|
      case set
      when 'base'
        @libraries += BaseLibrary.new().base_library
      end
    }
  end

  def choose_kingdom()
    lib_size = @libraries.size
    @kingdome_set = []
    @libraries.each_with_index do |card, index|

    end
  end
end
