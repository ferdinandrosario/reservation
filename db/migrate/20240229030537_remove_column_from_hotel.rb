# frozen_string_literal: true

class RemoveColumnFromHotel < ActiveRecord::Migration[7.1]
  def change
    remove_column :hotels, :city
  end
end