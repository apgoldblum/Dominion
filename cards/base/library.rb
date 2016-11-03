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
    Card.new(card_name = 'cellar', cost = 2, type = ['action'], actions = 1, effect = card_effect)
  end

  def chapel()
    card_effect = nil
    Card.new(card_name = 'chapel', cost = 2, type = ['action'], effect = card_effect)
  end

  def moat()
    card_effect = nil
    Card.new(card_name = 'moat', cost = 2, type = ['action', 'reaction'], cards = 2, effect = card_effect)
  end

  def harbinger()
    card_effect = nil
    Card.new(card_name = 'chapel', cost = 3, type = ['action'], cards = 1, actions = 1, effect = card_effect)
  end

  def merchant()
    card_effect = nil
    Card.new(card_name = 'chapel', cost = 3, type = ['action'], cards = 1, actions = 1, effect = card_effect)
  end

  def vassal()
    card_effect = nil
    Card.new(card_name = 'chapel', cost = 2, type = ['action'], coins = 2, effect = card_effect)
  end

  def village()
    Card.new(card_name = 'chapel', cost = 3, type = ['action'], cards = 1, actions = 2)
  end

  def chapel()
    card_effect = nil
    Card.new(card_name = 'chapel', cost = 2, type = ['action'], effect = card_effect)
  end

end
