#Author: Aaron G
require './action_module'

class Player

  include ::ActionModule

  attr_accessor :actions, :buys, :coin_tokens, :coins, :deck, :discard, :extra_vp, :hand, :in_play, :victory_points

  def initialize
    @actions = 0
    @buys = 0
    @coin_tokens = 0
    @coins = 0
    @deck = []
    @discard = []
    @extra_vp = 0
    @hand = {}
    @in_play = []
    @victory_points = 0
  end

  def draw(cards)
    hand_array = []
    cards.times do |i|
      hand_array.push(deck.pop)
    end
    parse_hand
  end

  def discard(cards)
    cards.times do |i|
      discard.push(hand.pop)
    end
  end

  def complete_action(action)
    case action.downcase
    when 'hand'
      display_hand
    else
      puts "That is not a valid move, please try again."
    end
  end

  def play_card

  end

  private

  def parse_hand
    cards = cards_in_hand
    number_of_cards = 0
    card_index = 0
    hand = []
    current_card = cards[0]
    cards.each do |card|
      if current_card == card
        number_of_cards += 1
      else
        hand.push({index: card_index, card: current_card, number: number_of_cards})
        current_card = card
        number_of_cards = 1
        card_index += 1
      end
    end
  end

  def cards_in_hand
    cards = []
    hand.each do |card|
      cards.push(card.card_name)
    end
    cards.sort!
  end
end

