#Author: Aaron G
require_relative '../card'

class BaseLibrary

  attr_reader :base_library

  def initialize
    @base_library = render_library
  end

  private

  def render_library
    [cellar, chapel, moat, harbinger, merchant, vassal, village,
     workshop, bureaucrat, gardens, militia, moneylender, poacher,
     remodel, smithy, throne_room, bandit, council_room, festival,
     laboratory, library, market, mine, sentry, witch, artisan]
  end

  def cellar
    card_effect = nil
    @cellar ||= Card.new(card_name = 'cellar', cost = 2, type = ['action'], {actions: 1}, effect = card_effect)
  end

  def chapel
    card_effect = nil
    @chapel ||= Card.new(card_name = 'chapel', cost = 2, type = ['action'], {}, effect = card_effect)
  end

  def moat
    card_effect = nil
    @moat ||= Card.new(card_name = 'moat', cost = 2, type = ['action', 'reaction'], {cards: 2}, effect = card_effect)
  end

  def harbinger
    card_effect = nil
    @harbinger ||= Card.new(card_name = 'harbinger', cost = 3, type = ['action'], {cards: 1, actions: 1}, effect = card_effect)
  end

  def merchant
    card_effect = nil
    @merchant ||= Card.new(card_name = 'merchant', cost = 3, type = ['action'], {cards: 1, actions: 1}, effect = card_effect)
  end

  def vassal
    card_effect = nil
    @vassal ||= Card.new(card_name = 'vassal', cost = 3, type = ['action'], {coins: 2}, effect = card_effect)
  end

  def village
    @village ||= Card.new(card_name = 'village', cost = 3, type = ['action'], {cards: 1, actions: 2})
  end

  def workshop
    card_effect = nil
    @workshop ||= Card.new(card_name = 'workshop', cost = 3, type = ['action'], {}, effect = card_effect)
  end

  def bureaucrat
    card_effect = nil
    @bureaucrat ||= Card.new(card_name = 'bureaucrat', cost = 4, type = ['action', 'attack'], {}, effect = card_effect)
  end

  def gardens
    card_effect = nil
    @gardens ||= Card.new(card_name = 'gardens', cost = 4, type = ['victory'], {}, effect = card_effect)
  end

  def militia
    card_effect = nil
    @militia ||= Card.new(card_name = 'militia', cost = 4, type = ['action', 'attack'], {coins: 2}, effect = card_effect)
  end

  def moneylender
    card_effect = nil
    @moneylender ||= Card.new(card_name = 'moneylender', cost = 4, type = ['action'], {}, effect = card_effect)
  end

  def poacher
    card_effect = nil
    @poacher ||= Card.new(card_name = 'poacher', cost = 4, type = ['action'], {cards: 1, actions: 1, coins: 1}, effect = card_effect)
  end

  def remodel
    card_effect = nil
    @remodel ||= Card.new(card_name = 'remodel', cost = 4, type = ['action'], {}, effect = card_effect)
  end

  def smithy
    @smithy ||= Card.new(card_name = 'smithy', cost = 4, type = ['action'], {cards: 3})
  end

  def throne_room
    card_effect = nil
    @throne_room ||= Card.new(card_name = 'throne_room', cost = 4, type = ['action'], {}, effect = card_effect)
  end

  def bandit
    card_effect = nil
    @bandit ||= Card.new(card_name = 'bandit', cost = 4, type = ['action'], {}, effect = card_effect)
  end

  def council_room
    card_effect = nil
    @council_room ||= Card.new(card_name = 'council_room', cost = 5, type = ['action'], {cards: 4, buys: 1}, effect = card_effect)
  end

  def festival
    @festival ||= Card.new(card_name = 'festival', cost = 5, type = ['action'], {actions: 2, buys: 1, coins: 2})
  end

  def laboratory
    @laboratory ||= Card.new(card_name = 'laboratory', cost = 5, type = ['action'], {cards: 2, actions: 1})
  end

  def library
    card_effect = nil
    @library ||= Card.new(card_name = 'library', cost = 5, type = ['action'], {}, effect = card_effect)
  end

  def market
    @market ||= Card.new(card_name = 'market', cost = 5, type = ['action'], {actions: 1, cards: 1, buys: 1, coins: 1})
  end

  def mine
    card_effect = nil
    @mine ||= Card.new(card_name = 'mine', cost = 5, type = ['action'], {}, effect = card_effect)
  end

  def sentry
    card_effect = nil
    @sentry ||= Card.new(card_name = 'sentry', cost = 5, type = ['action'], {cards: 1, actions: 1}, effect = card_effect)
  end

  def witch
    card_effect = nil
    @witch ||= Card.new(card_name = 'witch', cost = 5, type = ['action', 'attack'], {cards: 2}, effect = card_effect)
  end

  def artisan
    card_effect = nil
    @artisan ||= Card.new(card_name = 'artisan', cost = 6, type = ['action'], {}, effect = card_effect)
  end
end
