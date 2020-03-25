# frozen_string_literal: true

# Model for Courier
class Courier < ApplicationRecord
  validates :name,    presence: true
  validates :email,   presence: true
end
