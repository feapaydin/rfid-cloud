class CardAuthenticator < Patterns::Service
  attr_reader :card_number, :card, :error

  def initialize(card_number)
    @card_number = card_number
  end

  def call
    find_card || (return false)

    # Update card
    @card.last_login = DateTime.now
    @card.login_count += 1
    @card.save

    true
  end

  private

  def find_card
    @card = Card.active.find_by(address: @card_number)

    @error = 'Card not found' unless @card
    !@card.nil?
  end
end
