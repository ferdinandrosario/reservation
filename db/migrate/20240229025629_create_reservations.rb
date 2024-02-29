# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :user_id
      t.integer :hotel_id
      t.integer :room_id

      t.timestamps
    end
  end
end
