Rails.application.routes.draw do
  # get 'tweets/index'
   get    '/'   ,to: 'tweets#index'
   resources :tweets
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
