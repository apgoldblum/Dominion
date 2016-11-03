#Author: Aaron G
require '../card'

class BaseLibrary
  def initialize()
    @library = render_cards()
  end

  private

  def setup_library()
    cellar = Card.new(card_name = 'cellar', cost = 2, type = ['action'], cards = 2, e)
  end

  def cellar()
    card_effect = lambda
    Card.new(card_name = 'cellar', cost = 2, type = ['action'], cards = 2, effect = card_effect)
  end
end
