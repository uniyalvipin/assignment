class BookingsController < ApplicationController
  def show_bookings
    @book = Booking.where(user_id: current_user.id)
  end

  def generate
    @hotels = Hotel.all
  end

  def insert_booking
    u_id = current_user.id
    puts params[:booked][:hotel_name]
    h_id = Hotel.find_by(hotel_name: params[:booked][:hotel_name]).id
    Booking.create(user_id: u_id, hotel_id: h_id, h_name: params[:booked][:hotel_name], b_date: params[:booked][:date], b_time: params[:booked][:time], no_of_booking: params[:booked][:no_of_guests])
  end

  def delete
    Booking.where(user_id: current_user.id).destroy_all
  end
end
