#Author: Aaron G
require 'pry'

class Player

  attr_accessor :actions, :buys, :coin_tokens, :coins, :deck, :discard, :extra_vp, :hand, :in_play, :parsed_hand
                :victory_points

  def initialize
    @actions = 0
    @buys = 0
    @coin_tokens = 0
    @coins = 0
    @deck = []
    @discard = []
    @extra_vp = 0
    @hand = []
    @parsed_hand = []
    @in_play = []
    @victory_points = 0
  end

  def draw(cards)
    cards.times do |i|
      hand.push(deck.pop)
    end
  end

  def discard(cards)
    cards.times do |i|
      discard.push(hand.pop)
    end
  end

  def parse_hand
    parsed_hand = []
    cards = cards_in_hand
    number_of_cards = 0
    card_index = 0
    current_card = cards[0]
    cards.each do |card|
      if current_card == card
        number_of_cards += 1
      else
        parsed_hand.push({index: card_index, card: current_card, number: number_of_cards})
        current_card = card
        number_of_cards = 1
        card_index += 1
      end
    end
    parsed_hand.push({index: card_index, card: current_card, number: number_of_cards})
  end

  private

  def cards_in_hand
    cards = []
    hand.each do |card|
      cards.push(card.card_name)
    end
    cards.sort!
  end
end

