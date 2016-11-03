#Author: Aaron G
require_relative '../card'

class BaseLibrary
  def initialize()
    @library = setup_cards()
  end

  private

  def setup_library()
    cellar = Card.new(card_name = 'cellar', cost = 2, type = ['action'], cards = 2, e)
  end

  def cellar()
    card_effect = nil
    Card.new(card_name = 'cellar', cost = 2, type = ['action'], cards = 2, effect = card_effect)
  end

  def chapel()
    # card_effect = ni
  end
end
