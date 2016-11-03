#Author: Aaron G
class Card

  attr_reader :actions, :buys, :card_name, :cards, :coins, :cost, :effect, :type, :vp

  def initialize(card_name, cost, type, actions = 0, buys = 0, cards = 0, coins = 0, effect = nil, vp = 0)
    @actions = actions
    @buys = buys
    @card_name = card_name
    @cards = cards
    @coins = coins
    @cost = cost
    @effect = effect
    @type = type
    @vp = vp
  end
end
