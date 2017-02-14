#Author: Aaron G
require 'pry'
class Card

  attr_reader :actions, :buys, :card_name, :cards, :coins, :cost, :effect, :type, :vp

  def initialize(card_name, cost, type, options, effect = nil)
    @actions = options[:actions]
    @buys = options[:buys]
    @card_name = card_name
    @cards = options[:cards]
    @coins = options[:coins]
    @cost = cost
    @effect = effect
    @type = type
    @vp = options[:vp]
  end
end
