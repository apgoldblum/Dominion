#Author: Aaron G
require '../card'

class BaseLibrary
  def initialize()
    @library = setup_library()
    @card_stack = setup_card_stack()
  end

  private

  def setup_library()
    # Cost = 2
    cellar = Card.new(card_name = 'cellar', cost = 2, type = ['action'])
  end
end
