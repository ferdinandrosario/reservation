class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name, null: false
      t.integer :city, null: false
      t.text :about

      t.timestamps
    end
  end
end