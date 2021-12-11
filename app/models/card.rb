class Card < ApplicationRecord
  scope :active, -> { where(status: 1) }
end
