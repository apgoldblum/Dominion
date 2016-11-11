#Author: Aaron G

class Player

  attr_accessor :actions, :buys, :coin_tokens, :coins, :deck, :discard, :extra_vp, :hand, :in_play, :victory_points

  def initialize()
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

  def add_victory_points(points)
    victory_points += points
  end

  def add_coin_tokens(tokens)
    coin_tokens += tokens
  end

  def add_extra_vp(evp)
    extra_vp += evp
  end

  def draw(cards)
    hand_array = []
    for i in 1..cards
      hand_array.push(deck.pop)
    end
    process_hand(hand_array)
  end

  def process_hand(hand_array)
    hand_array.each do |card|

    end
  end

  def discard(cards)
    for i in 1..cards
      discard.push(hand.pop)
    end
  end

  def display_hand()
    cards = cards_in_hand()
    card_number = [0]
    card_index = 0
    cards.each do |card|
      current_card ||= card
      if current_card == card
        card_number[card_index] += 1
      else
        puts ("#{card_index}: #{card} x#{card_number}")
        current_card = card
        card_number = 0
        card_index += 1
      end
    end
  end

  def play_card()

  end

  private

  def cards_in_hand()
    cards = []
    hand.each do |card|
      cards.push(card.card_name)
    end
    cards.sort!
  end
end

