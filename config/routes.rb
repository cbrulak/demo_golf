Rails.application.routes.draw do
  #shallow do
  #  resources :clubs do
  #    resources :tee_times, shallow: true do 
  #      resources :bookings  
  #    end
  #  end
  #end

  get 'home/index'

  resources :tee_times do 
    resources :bookings   
  end
  resources :bookings   
  resources :clubs
  resources :users
  
  root 'home#index'
end
