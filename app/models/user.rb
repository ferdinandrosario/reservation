class User < ApplicationRecord
  has_many :reservations
  has_many :hotels, through: :reservations
  has_many :rooms, through: :reservations

  validates :email, presence: true
end