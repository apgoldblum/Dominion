#Author: Aaron G
require './player'
require './cards/card'
require './cards/default_library'
require './kingdom'
require './board'

class Game

  attr_accessor :players, :board

  def initialize(player_count)
    @player_count = player_count
  end

  def setup()
    player_setup()
    board_setup()
    deck_setup()
  end

  def start()
    starting_player = rand(@player_count)
    @turns = []
    (0..@player_count-1).each do |i|
      i == starting_player ? @turns.push(true) : @turns.push(false)
    end
  end

  def play()
    while end?() do
      take_turn()
      next_turn()
    end
  end

  def end?()
    true
  end

  private

  def take_turn()
    turn = @turns.index(true)
    player = players[turn]
    puts turn
    puts 'Player #{turn} turn start!'
    puts 'If you need turn commands, type HELP at any time'
    player.actions = 1
    player.buys = 1
    move = ''
    while move != 'end' || player.buys == 0 do
      print 'Move: '
      move = gets.chomp
      check_move(move, player)
    end
  end

  def check_move(move, player)
    case move
    when 'hand'
      puts 'finally'
      puts player.hand
    end
  end


  def next_turn()
    current_t = @turns.index(true)
    @turns[current_t] = false
    next_t = current_t + 1
    next_t >= @turns.length ? @turns[0] = true : @turns[next_t] = true
  end

  def player_setup()
    @players = {0 => Player.new(), 1 => Player.new()}
  end

  def board_setup()
    @board ||= Board.new(@player_count)
    @board.setup()
  end

  def deck_setup()
    default_library = DefaultLibrary.new().render()
    estate = default_library[:estate]
    copper = default_library[:copper]
    default_deck = [estate, estate, estate, copper, copper, copper, copper, copper, copper, copper]
    players[0].deck = default_deck.shuffle
    players[1].deck = default_deck.shuffle
  end
end
