class Hotel < ApplicationRecord
  belongs_to :city
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  has_many :rooms, through: :reservations
end