# frozen_string_literal: true

class AddDefalultCityForHotel < ActiveRecord::Migration[7.1]
  def change
    change_column_default :hotels, :city, 0
  end
end