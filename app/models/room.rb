# frozen_string_literal: true

class Room < ApplicationRecord
  has_many :reservations
  has_many :hotels, through: :reservations
  has_many :users, through: :reservations
end