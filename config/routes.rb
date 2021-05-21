Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home/index'
  root to: 'home#index'
  get 'hotels/show_list'
  get 'profile/user'
  get 'bookings/generate'
  get 'bookings/show_bookings'
  get 'bookings/insert_booking'
  delete 'bookings/delete'
  get 'bookings/show_capacity_error'
  namespace :api do
    namespace :v1 do
      devise_for :users
      get 'hotels/show_list'
      get 'profile/user'
      get 'bookings/generate'
      get 'bookings/show_bookings'
      get 'bookings/insert_booking'
      delete 'bookings/delete'
    end
  end

end
