Rails.application.routes.draw do
  root :to => redirect('/restaurants')
  resources :pizzas
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
