module ActionModule

  def display_hand
    cards = cards_in_hand
    number_of_cards = 0
    card_index = 0
    hand = []
    current_card = cards[0]
    cards.each do |card|
      if current_card == card
        number_of_cards += 1
      else
        puts ("#{card_index}: #{current_card} x#{number_of_cards}")
        hand.push({index: card_index, card: current_card, number: number_of_cards})
        current_card = card
        number_of_cards = 1
        card_index += 1
      end
    end
    puts ("#{card_index}: #{current_card} x#{number_of_cards}")
  end

  # puts ("#{card_index}: #{card} x#{card_number}")

end
