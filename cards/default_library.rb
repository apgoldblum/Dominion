#Author: Aaron G
require_relative 'card'

class DefaultLibrary

  attr_reader :library

  def initialize()
    @library = setup_library()
  end

  private

  def render_cards()
    # Victory Points
    estate = Card.new(card_name = 'estate', cost = 2, type = ['vp'], vp = '1')
    dutchy = Card.new(card_name = 'dutchy', cost = 5, type = ['vp'], vp = '3')
    province = Card.new(card_name = 'province', cost = 8, type = ['vp'], vp = '6')
    curse = Card.new(card_name = 'curse', cost = 0, type = ['vp'], vp = '-1')

    # Treasures
    copper = Card.new(card_name = 'copper', cost = 0, type = ['treasure'], coins = '1')
    silver = Card.new(card_name = 'silver', cost = 3, type = ['treasure'], coins = '2')
    gold = Card.new(card_name = 'gold', cost = 6, type = ['treasure'], coins = '3')

    # Create Library
    library = {estate: estate, dutchy: dutchy, province: province, curse: curse, copper: copper, silver: silver, gold: gold}
  end
end
