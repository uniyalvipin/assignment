class BookingsController < ApplicationController
  def show_bookings
    @book = Booking.where(user_id: current_user.id)
  end

  def generate
    @hotels = Hotel.all
  end

  def insert_booking
    if (Hotel.find_by(hotel_name: params[:booked][:hotel_name]).capacity != 0)
      u_id = current_user.id
      puts params[:booked][:hotel_name]
      h_id = Hotel.find_by(hotel_name: params[:booked][:hotel_name]).id
      Booking.create(user_id: u_id, hotel_id: h_id, h_name: params[:booked][:hotel_name], b_date: params[:booked][:date], b_time: params[:booked][:time], no_of_booking: params[:booked][:no_of_guests])
      Hotel.find_by(hotel_name: params[:booked][:hotel_name]).update(capacity: Hotel.find_by(hotel_name: params[:booked][:hotel_name]).capacity - 1)
    else
      redirect_to bookings_show_capacity_error_path
    end
  end

  def delete
    id = params[:id]
    h_name = params[:hotel_name]
    Booking.find(id).destroy
    Hotel.find_by(hotel_name: h_name).update(capacity: Hotel.find_by(hotel_name: h_name).capacity + 1)
    redirect_to bookings_show_bookings_path
  end
end
