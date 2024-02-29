# frozen_string_literal: true

class City < ApplicationRecord
  has_many :hotels, dependent: :destroy
end