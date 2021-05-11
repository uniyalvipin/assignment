class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :hotel_name
      t.integer :capacity
      t.string :address

      t.timestamps
    end
  end
end
