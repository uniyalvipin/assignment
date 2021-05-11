class AddNoOfBookingsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :no_of_booking, :integer
  end
end
