class HotelsController < ApplicationController
    def show_list
        @hotels = Hotel.all
    end
end
  