#Author: Aaron G
require './cards/base/library'

class Kingdom

  attr_reader :sets

  #Sets should be an array
  def initialize(sets)
    @sets = sets
  end

  def create_librarys()
    @base_library = BaseLibrary.new().library
  end
end
