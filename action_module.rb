require 'pry'

module ActionModule

  def display_hand(parsed_hand)
    parsed_hand.each do |card|
      puts ("#{card[:index]}: #{card[:card]} x#{card[:number]}")
    end
  end

  def display_kingdom
    kingdom = board[:kingdom].to_a.map do |card|
      card[1][0].card_name
    end
    supply = board[:supply].to_a.map do |card|
      card[1][0].card_name
    end
    puts 'Kingdom:'
    kingdom.each_with_index do |card, i|
      puts " k#{i}: #{card}"
    end
    puts 'Supply:'
    supply.each_with_index do |card, i|
      puts " s#{i}: #{card}"
    end
  end

end
