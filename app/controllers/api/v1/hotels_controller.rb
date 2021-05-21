class Api::V1::HotelsController < ApplicationController
    def index
        @hotels = Hotel.all
        render json: @hotels
    end
    def create
        @hotel = Hotel.new(params["name"])
        if @hotel.save
            render json: @hotel
        else
            render error: { error: "Not able to save" }, status: 400
        end
    end
end