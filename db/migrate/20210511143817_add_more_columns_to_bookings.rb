class AddMoreColumnsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :h_name, :string
    add_column :bookings, :b_date, :text
    add_column :bookings, :b_time, :text
  end
end
